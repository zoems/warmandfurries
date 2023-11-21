class AddRangeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :range, :string
  end
end
