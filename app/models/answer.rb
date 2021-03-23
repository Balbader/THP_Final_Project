class Answer < ApplicationRecord
  belongs_to :trivium
  validates :answer, presence: true
  validates :trivium_id, presence: true
end
