class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :employees_projects do |t|
      t.column :employee_id, :integer
      t.column :project_id, :integer
    end
  end
end
