class DropTableSkillsProject < ActiveRecord::Migration[5.1]
  def change
    drop_table :skills_projects
  end
end
