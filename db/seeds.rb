# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Cleaning DB..."
Motorcycle.destroy_all
User.destroy_all
Review.destroy_all
Booking.destroy_all

puts "---------------------"
puts "Login:"
puts "test@test.com"
puts "pass: 123456"
puts "---------------------"
User.create(email: "test@test.com", password: "123456")

puts "Creating motorcycles..."
motorcycles_attributes = [
  {
    name: "Black Panther",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Blizzard",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Gaddafi",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Goodluck Jonathan",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Haile Selassie",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Kofi Annan",
    moto_type: "Yamaha XT225",
    description: "Engine size: 225cc / max speed 120 kph | Fuel usage: circa 650 KSh / 100 km | Manual transition with 5 gears",
    price: 19,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179869/iRideNairobi/YamahaXT225.jpg.jpg",
  },

  {
    name: "Mandela",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179869/iRideNairobi/YamahaXT225.jpg.jpg",
  },
  {
    name: "Mathai",
    moto_type: "Wego 110",
    description: "Engine size: 110cc / max speed 85 kph | Fuel usage: circa 250 KSh / 100 km | Automatic transition",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179738/iRideNairobi/Wego110.jpg",
  },
  {
    name: "Nyerere",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179738/iRideNairobi/Wego110.jpg",
  },

  {
    name: "Raila",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Samora",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Sankara",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Steve Biko",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Uhuru",
    moto_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  }
]

Motorcycle.create!(motorcycles_attributes)
puts "Motorcycles created!"


def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

puts "Creating Bookings..."
5.times do
  motorcycle = Motorcycle.all.sample
  user = User.all.sample
  Booking.create(user: user, motorcycle: motorcycle, start_date: time_rand.to_date, end_date: time_rand.to_date, address: "Nairobi")
end
puts "Bookings created!"



puts "Creating Some Fake Reviews..."
20.times do
  motorcycle = Motorcycle.all.sample
  user = User.all.sample
  Review.create(motorcycle: motorcycle, content: ["The best motorbike ever", "Nice", "Super Cool", "The best way to explore Nairobi"].sample, stars: rand(1..5), user: user)
end
puts "Reviews created!"