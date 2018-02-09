class FixAssociation < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :client_id
    remove_column :companies, :project_id
    add_column :clients, :company_id, :integer
  end
end
