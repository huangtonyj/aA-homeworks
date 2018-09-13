class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'www.google.com'
    mail(to: 'example@email.com', subject: 'Welcome to 99 Cats')
  end

end
