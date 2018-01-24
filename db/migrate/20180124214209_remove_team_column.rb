class RemoveTeamColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :team_id
  end
end
