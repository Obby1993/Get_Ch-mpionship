class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :main_sport, :string
    add_column :users, :medical_certificate, :boolean
  end
end
