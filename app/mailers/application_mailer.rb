# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'ludeeorg@gmail.com'
  layout 'mailer'
end
