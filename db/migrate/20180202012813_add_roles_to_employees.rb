class AddRolesToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :project_roles, :string, array: true 
  end
end
