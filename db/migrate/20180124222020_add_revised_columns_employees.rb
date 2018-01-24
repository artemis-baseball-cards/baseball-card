class AddRevisedColumnsEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :mission, :text
    add_column :employees, :expectation, :text
    add_column :employees, :awesome, :text
    add_column :employees, :need, :string
    add_column :employees, :receive_feedback, :text
    add_column :employees, :development, :text
    add_column :employees, :area_to_develop_two, :string
    add_column :employees, :area_to_develop_three, :string
    add_column :employees, :area_to_develop_four, :string
    add_column :employees, :personal_goal_two, :string
    add_column :employees, :personal_goal_three, :string
    add_column :employees, :personal_goal_four, :string
  end
end
