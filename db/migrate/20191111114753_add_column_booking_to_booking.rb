class AddColumnBookingToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking, :integer
  end
end
