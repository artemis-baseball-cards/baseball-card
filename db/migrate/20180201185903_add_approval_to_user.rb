class AddApprovalToUser < ActiveRecord::Migration[5.1]

  def change
    add_column :users, :approved, :boolean, :default => false, :null => false

    User.create! do |u|
     u.email     = 'test@test.com'
     u.password    = 'password'
     u.password_confirmation = 'password'
     u.superadmin_role = true
     u.approved = true
     end

  end

end
