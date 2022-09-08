class AddHostToSelectplayer < ActiveRecord::Migration[7.0]
  def change
    add_column :select_players, :actor_id, :integer
  end
end
