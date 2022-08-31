class ChangeOrganismToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :organism, :string
  end
end
