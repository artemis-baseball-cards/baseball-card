class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.column :name, :varchar
      t.column :contact, :varchar
      t.column :position, :varchar
      t.column :meetings, :varchar
      t.column :emails, :varchar
      t.column :formatting, :varchar
      t.column :other, :varchar
      t.timestamps :null => true
    end
  end
end
