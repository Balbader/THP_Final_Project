# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'dotenv-rails'

require 'mailjet'
Mailjet.configure do |config|
    config.api_key = ENV['MAILJET_LOGIN']
    config.secret_key = ENV['MAILJET_PWD']
config.api_version = "v3.1"
end
variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'ludeeorg@gmail.com',
    'Name'=> 'Ludee Test'
  },
  'To'=> [
    {
      'Email'=> 'ludeeorg@gmail.com',
      'Name'=> 'Ludee Test'
    }
  ],
  'Subject'=> 'Greetings from Mailjet.',
  'TextPart'=> 'My first Mailjet email',
  'HTMLPart'=> '<h3>Dear passenger 1, welcome to <a href=\'https://www.mailjet.com/\'>Mailjet</a>!</h3><br />May the delivery force be with you!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']

run Rails.application
Rails.application.load_server
