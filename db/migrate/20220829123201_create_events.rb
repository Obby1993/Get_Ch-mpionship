class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :nb_players_team
      t.float :price_by_player
      t.date :event_start
      t.date :event_end
      t.string :event_address
      t.string :event_gender
      t.date :deadline_register
      t.float :prizemoney
      t.integer :nb_team
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
