class TriviaController < ApplicationController
  before_action :authenticate_user!
  def index
      @trivia = Trivium.all
  end

  def show
    @trivia = Trivium.find(params[:id])
    @answer = Answer.new
  end

  def trivia_answer
    @trivia = Trivium.find(params[:id])
    if params[:answer][:answer].blank?
      flash[:error] = "Answer cannot be blank"
      redirect_to trivium_path(@trivia)
    else
      @answer = Answer.find(params[:answer][:answer])
      trivia = Trivium.find(@answer.trivium_id)
      TriviaUser.create(user_id: current_user.id, trivium_id: trivia.id)
      if @answer.is_correct
          current_user.update(score: current_user.score+10)  
      end
    end
  end

  def new
    @trivium = Trivium.new
  end

  def create
    @trivium = Trivium.new(trivia_params)
    if @trivium.save
      answer_params.values.each do |hash|
        ans = Answer.new(hash)
        ans.trivium_id = @trivium.id
        if ans.is_correct.nil?
           ans.is_correct = false
        end
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
      @trivium.answers.each{|x| x.delete}
      @trivium.save
      answer_params.values.each do |hash|
        ans = Answer.new(hash)
        ans.trivium_id = @trivium.id
        if ans.is_correct.nil?
          ans.is_correct = false
        end
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
