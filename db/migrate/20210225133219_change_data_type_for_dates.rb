class ChangeDataTypeForDates < ActiveRecord::Migration[6.0]
  def change
    change_table :bookings do |t|
      t.change :start_date, :datetime
      t.change :end_date, :datetime
    end
  end
end
