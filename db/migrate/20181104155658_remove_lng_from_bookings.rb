class RemoveLngFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :lng, :float
  end
end
