class AddLocationToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :country, :string
    add_column :projects, :state, :string
    add_column :projects, :city, :string
    
    add_column :employees, :remote, :boolean
  end
end
