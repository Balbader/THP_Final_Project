class Trivium < ApplicationRecord
    belongs_to :category
    has_many :trivia_users
    has_many :users, through: :trivia_users
    has_many :answers
  
    validates :question, presence: true

    def count_errors
      count = 0
      if current_user.@answer.is_correct == false
        count +1 = 0
      end
    end
end
