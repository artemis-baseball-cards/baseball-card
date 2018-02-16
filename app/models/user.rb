class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_admin_mail, :create_admin
  def send_admin_mail
   UserMailer.send_welcome_email(self).deliver_now
   AdminMailer.new_user_waiting_for_approval(self).deliver
  end  
  
 def create_admin
   User.create! do |u|
     u.email     = 'admin@admin.com'
     u.password    = 'password'
     u.password_confirmation = 'password'
     u.superadmin_role = true
     u.approved = true
   end
 end

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super # Use whatever other message
    end
  end

  belongs_to :employee, optional: true
end
