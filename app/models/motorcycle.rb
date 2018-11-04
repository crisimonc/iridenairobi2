class Motorcycle < ApplicationRecord
	has_many :reviews, dependent: :destroy
	has_many :bookings
end
