class AddTypetoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type, :string
    add_column :events, :age_players, :integer
  end
end
