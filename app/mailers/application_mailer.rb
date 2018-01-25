class ApplicationMailer < ActionMailer::Base
  default from: 'artemis.test@yandex.com'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end
end
