class AddColumnsCompanyToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :organism, :boolean
    add_column :users, :company_name, :string
    add_column :users, :company_type, :string
  end
end
