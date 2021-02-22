class CreatePilotReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :pilot_reviews do |t|
      t.string :description
      t.integer :rating
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
