class AddTypeToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :activity, :string
  end
end
