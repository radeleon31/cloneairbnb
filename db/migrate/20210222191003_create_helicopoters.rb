class CreateHelicopoters < ActiveRecord::Migration[6.0]
  def change
    create_table :helicopoters do |t|
      t.float :price_hour
      t.integer :occupancy
      t.integer :autonomy
      t.string :type
      t.string :city
      t.text :description
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
