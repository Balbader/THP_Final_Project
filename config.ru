# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'dotenv-rails'

require 'mailjet'
Mailjet.configure do |config|
    config.api_key = ENV['MAILJET_LOGIN']
    config.secret_key = ENV['MAILJET_PWD']
    config.api_version = "v3.1"
    config.end_point = "https://api.us.mailjet.com"
    config.default_from = 'ludeeorg@gmail.com'
end

run Rails.application
Rails.application.load_server
