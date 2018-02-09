class AddFk < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :company_id, :integer
  end
end
