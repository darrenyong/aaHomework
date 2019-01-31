class UserMailer < ApplicationMailer
  default from: "everybody@appacademy.io"

  def welcome_email(user)
    @user = user
    @url  = 'https://www.appacademy.io/'
    mail(to: user.email, subject: 'Welcome to App Academy')
  end

end
