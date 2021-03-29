# frozen_string_literal: true

class TriviaController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.all
    @trivia = if current_user
                Trivium.all
              else
                Trivium.where(current_user.trivia.pluck(:id))
              end
  end

  def show
    @trivia = Trivium.find(params[:id])
    @answer = Answer.new
  end

  def trivia_answer
    @trivia = Trivium.find(params[:id])
    if params[:answer][:answer].blank?
      flash[:error] = 'Answer cannot be blank'
      redirect_to trivium_path(@trivia)
    else
      @answer = Answer.find(params[:answer][:answer])
      trivia = Trivium.find(@answer.trivium_id)
      TriviaUser.create(user_id: current_user.id, trivium_id: trivia.id)
      if @answer.is_correct == true
        current_user.update(score: current_user.score + 10)
        redirect_to trivium_path(trivia.id + 1)
        flash[:succes] = 'correct!'
      else
        current_user.update(score: current_user.score + 0)
        redirect_to trivium_path(trivia.id + 1)
        flash[:error] = 'wrong answer!'
      end
    end
  end

  def new
    @trivium = Trivium.new
  end

  def create
    @trivium = Trivium.new(trivia_params)
    if @trivium.save
      answer_params.each_value do |hash|
        ans = Answer.new(hash)
        ans.trivium_id = @trivium.id
        ans.is_correct = false if ans.is_correct.nil?
        ans.save
      end
      redirect_to trivium_path(@trivum)
    else
      redirect_to new_trivium_path
    end
  end

  def edit
    @trivium = Trivium.find(params[:id])
  end

  def update
    @trivium = Trivium.find(params[:id])
    if @trivium.update(trivia_params)
      @trivium.answers.each(&:delete)
      @trivium.save
      answer_params.each_value do |hash|
        ans = Answer.new(hash)
        ans.trivium_id = @trivium.id
        ans.is_correct = false if ans.is_correct.nil?
        ans.save
      end
      redirect_to trivium_path(@trivium)
    else
      redirect_to edit_trivium_path(@trivium)
    end
  end

  def destroy
    trivium = Trivium.find(params[:id])
    trivium.delete

    redirect_to trivia_path
  end

  private

  def trivia_params
    params.require(:trivium).permit(:question, :category_id)
  end

  def answer_params
    params.require(:trivium).require(:answers).permit!
  end
end
