class ChangeStartDateColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :start_date, :date
  end
end
