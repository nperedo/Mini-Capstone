class AddUserIdToTeams < ActiveRecord::Migration[8.0]
  def change
    add_reference :teams, :user, foreign_key: true
  end
end
