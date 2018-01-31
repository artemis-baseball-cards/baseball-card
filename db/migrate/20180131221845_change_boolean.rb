class ChangeBoolean < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :willing_to_travel
    add_column :employees, :willing_to_travel, :string
  end
end
