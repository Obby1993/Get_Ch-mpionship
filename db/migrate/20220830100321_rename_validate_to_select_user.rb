class RenameValidateToSelectUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :select_players, :validate, :confirmation
  end
end
