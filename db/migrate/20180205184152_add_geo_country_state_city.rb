class AddGeoCountryStateCity < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :home_geography
    add_column :employees, :country, :string
    add_column :employees, :state, :string
    add_column :employees, :city, :string

    remove_column :employees, :start_date
    add_column :employees, :start_date, :date

    remove_column :employees, :willing_to_travel
    add_column :employees, :willing_to_travel, :boolean
  end
end
