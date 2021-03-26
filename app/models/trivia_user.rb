# frozen_string_literal: true

class TriviaUser < ApplicationRecord
  belongs_to :user
  belongs_to :trivium
end
