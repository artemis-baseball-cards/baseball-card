class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.column :name, :varchar
      t.column :company_goals, :varchar
      t.column :personal_dev_goals, :varchar
      t.column :future_work_opportunities, :text
      t.column :client_id, :integer
      t.column :project_id, :integer
    end
  end
end
