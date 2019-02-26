# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "creating instrument"

# g = User.create!(name: "Georges12", email: "gheg@me.com", password: "123123")

# instrument_attribute = {
#   category: "Electric",
#   condition: "Alright",
#   location: "Here",
#   price: "Too much",
#   available: true
#   }


# i = Instrument.new(instrument_attribute)

# i.user = g

# i.save

# puts "finish"
require 'faker'
puts "starting"

20.times do
  user = User.new({
    user_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    lender: true
  })
  user.save!

  1.times do
    instrument = Instrument.new({
      category: Faker::Music.instrument,
      condition: "Good",
      location: "Here",
      price: "A lot",
      available: true
      })

  instrument.user = user
  instrument.save!
  end

  10.times do
  user = User.new({
    user_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    lender: false
  })
  user.save!
  end
end

puts "users done"

booking = Booking.new
booking.instrument = Instrument.find(1)

booking.user = User.find(1)
booking.save!
# booking.user = user.where(user_id = rand(1..30))

puts "fatal error"
