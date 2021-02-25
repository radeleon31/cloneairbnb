class AddCoordinatesToHelicopter < ActiveRecord::Migration[6.0]
  def change
    add_column :helicopters, :latitude, :float
    add_column :helicopters, :longitude, :float
  end
end
