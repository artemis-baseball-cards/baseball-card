class CreateEverything < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
     t.column, :name, :column
     t.column :position, :varchar
     t.column :personal_development_plan, :text
     t.column :life_quote, :varchar
     t.column :quote, :varchar
     t.column :motto, :varchar
     t.column :strength, :varchar
     t.column :myers_briggs, :text
     t.column :birkman, :text
     t.column :vision, :varchar
     t.column :short_term_goal, :varchar
     t.column :long_term_goal, :varchar
     t.column :area_to_develop, :varchar
     t.column :objective_setting, :varchar
     t.column :personal_goal, :varchar
     t.column :mission, :text
     t.column :expectation, :text
     t.column :awesome, :text
     t.column :need, :varchar
     t.column :receive_feedback, :text
     t.column :development, :text
     t.column :area_to_develop_two, :varchar
     t.column :area_to_develop_three, :varchar
     t.column :area_to_develop_four, :varchar
     t.column :personal_goal_two, :varchar
     t.column :personal_goal_three, :varchar
     t.column :personal_goal_four, :varchar
     t.column :manager, :boolean, default: false
     t.timestamps
   end
  end
end
