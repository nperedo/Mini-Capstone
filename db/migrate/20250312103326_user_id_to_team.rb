class UserIdToTeam < ActiveRecord::Migration[8.0]
  def change
    add_column :teams, :user_id, :integer
    add_column :players, :team_id, :integer
  end
end
