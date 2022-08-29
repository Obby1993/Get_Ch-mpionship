class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :nb_player
      t.string :gender
      t.boolean :paid, default: false
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
