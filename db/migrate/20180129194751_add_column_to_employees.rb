class AddColumnToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :start_date, :varchar
  end
end
