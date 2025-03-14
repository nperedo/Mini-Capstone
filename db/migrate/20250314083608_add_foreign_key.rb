class AddForeignKey < ActiveRecord::Migration[8.0]
  def change
    remove_column :teams, :user_id
    remove_column :players, :team_id
  end
end
