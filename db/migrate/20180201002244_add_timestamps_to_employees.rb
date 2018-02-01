class AddTimestampsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :employees, null: true
  end
end
