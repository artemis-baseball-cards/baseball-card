class Create < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :title, :varchar
      t.column :start_date, :varchar
      t.column :end_date, :varchar
      t.column :project_type, :varchar
      t.column :role, :varchar
      t.column :key_skill, :varchar
      t.column :objective, :text
      t.column :goals, :text

      t.timestamps
    end
  end
end
