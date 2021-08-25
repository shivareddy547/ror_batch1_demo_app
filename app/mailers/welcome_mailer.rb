class WelcomeMailer < ApplicationMailer

  default from: 'shiva.r547@gmail.com'

  def send_email(email)

    mail(to: email, subject: 'Welcome to demo Site')
  end

end
