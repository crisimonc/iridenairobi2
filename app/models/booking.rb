class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  
  validates :motorcycle, :user, :start_date, :end_date, presence:true

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?


  def self.user_bookings(user)
  	Booking.where(user: user)
  end

end
