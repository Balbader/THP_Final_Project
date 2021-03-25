class TriviaUser < ApplicationRecord
    belongs_to :user
    belongs_to :trivium
end
