class ChangeDealineRegisterToEvents < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :deadline_register, :datetime
  end
end
