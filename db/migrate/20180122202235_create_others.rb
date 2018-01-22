class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :occasion
      t.string :end_project
      t.string :birthday
      t.text :pulse_survey

      t.timestamps
    end
  end
end
