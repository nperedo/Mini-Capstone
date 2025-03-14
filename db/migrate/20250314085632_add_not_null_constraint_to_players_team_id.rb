class AddNotNullConstraintToPlayersTeamId < ActiveRecord::Migration[8.0]
  def change
    change_column_null :players, :team_id, false
  end
end

