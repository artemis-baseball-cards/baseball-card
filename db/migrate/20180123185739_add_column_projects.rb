class AddColumnProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :objective, :text
    add_column :projects, :goals, :text
  end
end
