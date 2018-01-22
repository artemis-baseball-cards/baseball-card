class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :start_date
      t.text :personal_development_plan
      t.string :life_quote
      t.string :quote
      t.string :motto
      t.string :strength
      t.text :myers_briggs
      t.text :birkman
      t.string :vision
      t.string :short_term_goal
      t.string :long_term_goal
      t.string :area_to_develop
      t.string :objective_setting
      t.string :personal_goal
      t.integer :project_id
      t.integer :team_id

      t.timestamps
    end
  end
end
