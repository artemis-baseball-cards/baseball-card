class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.text :objective
      t.string :start_date
      t.text :goals

      t.timestamps
    end
  end
end
