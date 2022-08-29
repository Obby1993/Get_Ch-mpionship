class CreateSelectPlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :select_players do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.boolean :validate, default: false

      t.timestamps
    end
  end
end
