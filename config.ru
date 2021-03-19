# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'dotenv-rails'

require 'mailjet'
Mailjet.configure do |config|
    config.api_key = ENV['MAILJET_LOGIN']
    config.secret_key = ENV['MAILJET_PWD']
config.api_version = "v3.1"
end

run Rails.application
Rails.application.load_server
