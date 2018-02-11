class IndustriesTables < ActiveRecord::Migration[5.1]
  def change
    create_table :industries do |t|
      t.column :name, :string
    end

    create_table :employees_industries do |t|
      t.column :employee_id, :integer
      t.column :industry_id, :integer
    end

    create_table :industries_projects do |t|
      t.column :industry_id, :integer
      t.column :project_id, :integer
    end
  end
end
