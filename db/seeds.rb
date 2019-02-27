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
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

10.times do
  user = User.new({
    user_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    lender: true
  })
  user.save!

  1.times do
    instrument = Instrument.new({
      name: Faker::Music.instrument,
      category: Faker::Music.instrument,
      condition: "Good",
      location: "Here",
      price: "A lot",
      available: true
      })
    instrument.user = user
    instrument.save!
  end
end
# 10.times do
#   user = User.new({
#   user_name: Faker::Name.first_name,
#   email: Faker::Internet.email,
#   password: Faker::Internet.password,
#   lender: false
# })
# user.save!

#   5.times do
#     user = User.new({
#       user_name: Faker::Name.first_name,
#       email: Faker::Internet.email,
#       password: Faker::Internet.password,
#       lender: false
#     })
#     user.save!
#   end
# end
# booking = Booking.new(start_date: "Monday", end_date: "Tuesday", user: User.last,
#     instrument: Instrument.first)
# booking.save!

borrowers = User.all.select {|user| user.lender == false }
instruments = Instrument.all
daysOfWeek = ["Monday", "Tuesday"]

# 5.times do
#   booking = Booking.new()
#   booking.user = borrowers.sample
#   booking.instrument  = instruments.sample
#   booking.start_date = daysOfWeek.sample
#   booking.end_date = daysOfWeek.sample
#   booking.save!
# end

user = User.new({
      user_name: "Jimmi Hendrix",
      email: "Jimmi.hendrix@hendrix.com",
      password: 123456,
      lender: false
    })

puts "users done"
# booking.user = user.where(user_id = rand(1..30))

puts "fatal error"
