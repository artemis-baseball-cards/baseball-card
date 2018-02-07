class ChangeAtd < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :areas_to_develop
    add_column :employees, :areas_to_develop, :string
  end
end
