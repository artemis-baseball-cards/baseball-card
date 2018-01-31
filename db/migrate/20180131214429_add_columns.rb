class AddColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :industry, :string
    add_column :employees, :home_geography, :string
    add_column :employees, :industry_experience, :string, array: true
    add_column :employees, :willing_to_travel, :boolean
    remove_column :employees, :personal_development_plan
  end
end
