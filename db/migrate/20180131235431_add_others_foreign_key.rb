class AddOthersForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_column :others, :employee_id, :integer
  end
end
