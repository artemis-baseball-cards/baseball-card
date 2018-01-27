class DropEverything < ActiveRecord::Migration[5.1]
  def change
    drop_table :employees
    drop_table :projects
    drop_table :others
    drop_table :users
    drop_table :employees_projects
  end
end
