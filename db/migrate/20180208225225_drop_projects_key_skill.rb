class DropProjectsKeySkill < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :key_skill
  end
end
