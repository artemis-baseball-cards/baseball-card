class AdminMailer < ApplicationMailer
  default to: 'artemis.interns@gmail.com',
          from: 'artemis.interns@gmail.com'

  def new_user_waiting_for_approval(user)
    @user = user
    mail(subject: "New User Signup: #{@user.email}")
  end
end
