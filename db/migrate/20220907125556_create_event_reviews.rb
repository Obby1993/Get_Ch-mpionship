class CreateEventReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :event_reviews do |t|
      t.text :content
      t.string :reviewer
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
