class DropJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :employees_projects
  end
end
