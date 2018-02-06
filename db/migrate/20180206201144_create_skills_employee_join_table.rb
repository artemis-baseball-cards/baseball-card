class CreateSkillsEmployeeJoinTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :employees, :skills, :bbcard_skills

    create_table :skills do |t|
      t.column :description, :string
    end

    create_table :employees_skills do |t|
      t.column :skill_id, :integer
      t.column :employee_id, :integer
    end

    create_table :projects_skills do |t|
      t.column :skill_id, :integer
      t.column :project_id, :integer
    end

  end
end
