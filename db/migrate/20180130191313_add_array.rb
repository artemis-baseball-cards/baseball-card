class AddArray < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :area_to_develop
    remove_column :employees, :area_to_develop_two
    remove_column :employees, :area_to_develop_three
    add_column :employees, :areas_to_develop, :string, array: true
  end
end
