class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.column :occasion, :varchar
      t.column :end_project, :varchar
      t.column :birthday, :varchar
      t.column :pulse_survey, :text
      t.timestamps
    end
  end
end
