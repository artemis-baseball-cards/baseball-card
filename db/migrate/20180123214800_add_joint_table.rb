class AddJointTable < ActiveRecord::Migration[5.1]
  def change
    create_table :employees_projects do |t|
      t.integer :employee_id
      t.integer :project_id
    end
  end
end
