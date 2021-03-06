# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  api_key: ENV['MAILJET_LOGIN'],
  secret_key: ENV['MAILJET_PWD'],
  address: 'in-v3.mailjet.com',
  port: 587
}
