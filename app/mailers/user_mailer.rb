class UserMailer < ApplicationMailer
    default from: 'ludeeorg@gmail.com'
 
    def welcome_email(user)
        @user = user
        mail(
          from: 'ludeeorg@gmail.com',
          to: @user.email,
          #to: email_address_with_name(@user.email, @user.name),
          subject: 'Welcome to the Ludee.org',
        )
      end
end

