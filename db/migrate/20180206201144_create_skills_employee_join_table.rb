class CreateSkillsEmployeeJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :skills_employees do |t|
      t.column :skills_id, :integer
      t.column :employees_id, :integer
    end
  end
end
