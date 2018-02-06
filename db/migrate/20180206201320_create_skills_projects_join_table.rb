class CreateSkillsProjectsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :skills_projects do |t|
      t.column :skills_id, :integer
      t.column :projects_id, :integer
    end
  end
end
