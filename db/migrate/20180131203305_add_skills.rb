class AddSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :skills, :string, array: true
  end
end
