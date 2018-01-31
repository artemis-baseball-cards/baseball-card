class ChangeProjectRoles < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :role
    add_column :projects, :role, :string, array: true
  end
end
