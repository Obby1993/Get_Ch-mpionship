class AddReadToSelectplayers < ActiveRecord::Migration[7.0]
  def change
    add_column :select_players, :read, :boolean, default: false
  end
end
