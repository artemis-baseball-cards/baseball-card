class RemoveEmployeesBbcardskills < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :bbcard_skills
  end
end
