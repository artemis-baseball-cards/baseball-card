class AddCompaniesTimestamps < ActiveRecord::Migration[5.1]
  def change
    drop_table :companies

    create_table :companies do |t|
      t.column :name, :varchar
      t.column :company_goals, :varchar
      t.column :personal_dev_goals, :varchar
      t.column :future_work_opportunities, :text

      t.timestamps
    end
  end
end
