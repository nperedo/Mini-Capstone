class AddNotNullConstraintToTeamsUserId < ActiveRecord::Migration[8.0]
  def change
    change_column_null :teams, :user_id, false
  end
end
