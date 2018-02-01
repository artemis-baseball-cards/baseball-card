class AddApprovalToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :approved, :boolean, :default => false, :null => false
    add_column :users, :approved, :boolean, :default => true, :null => false
  end
end
