class CreateProjectRolesTables < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.column :name, :string
    end

    create_table :projects_roles do |t|
      t.column :role_id, :integer
      t.column :project_id, :integer
    end

    create_table :employees_roles do |t|
      t.column :employee_id, :integer
      t.column :role_id, :integer
    end
  end
end
