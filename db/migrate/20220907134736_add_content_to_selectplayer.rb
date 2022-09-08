class AddContentToSelectplayer < ActiveRecord::Migration[7.0]
  def change
    add_column :select_players, :notification, :string
  end
end
