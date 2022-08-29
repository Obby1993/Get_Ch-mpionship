class AddDefaultToMedicalFromUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :medical_certificate, :boolean, default: false
  end
end
