class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name
      t.decimal :ppg
      t.decimal :rebound
      t.decimal :assist

      t.timestamps
    end
  end
end
