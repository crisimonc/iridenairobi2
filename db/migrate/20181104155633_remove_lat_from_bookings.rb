class RemoveLatFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :lat, :float
  end
end
