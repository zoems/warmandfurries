class RenameRangeToDatesInBookings < ActiveRecord::Migration[7.1]
  def change
    change_table :bookings do |t|
      t.rename :range, :dates
    end
  end
end
