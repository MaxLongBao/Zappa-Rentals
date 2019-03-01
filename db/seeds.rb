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

# 10.times do
#   user = User.new({
#     user_name: Faker::Name.first_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     lender: true
#   })
#   user.save!

#   1.times do
#     instrument = Instrument.new({
#       post_name: Faker::Music.instrument,
#       image: "Image here",
#       description: Faker::Quote.yoda,
#       category: Faker::Music.instrument,
#       condition: "Good",
#       location: "Here",
#       price: Faker::Number.between(20, 99),
#       available: true
#       })
#     instrument.user = user
#     instrument.save!
#   end
# end
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

# borrowers = User.all.select {|user| user.lender == false }
# instruments = Instrument.all
# daysOfWeek = ["Monday", "Tuesday"]

# 5.times do
#   booking = Booking.new()
#   booking.user = borrowers.sample
#   booking.instrument  = instruments.sample
#   booking.start_date = daysOfWeek.sample
#   booking.end_date = daysOfWeek.sample
#   booking.save!
# end


user_lender1 = User.new({
    user_name: "Roger_Waters",
    email: "Roger@waters.com",
    password: "123456",
    lender: true
  })
user_lender1.save!

user_lender2 = User.new({
    user_name: "Frank_Zappa",
    email: "Frank@zappa.com",
    password: "123456",
    lender: true
  })
user_lender2.save!

user = User.new({
      user_name: "Jimmi Hendrix",
      email: "Jimmi.hendrix@hendrix.com",
      password: "123456",
      lender: false
    })
user.save

instrument1 = Instrument.new({
      post_name: "Warwick Streamer 5",
      image: "https://assets.fatllama.com/images/medium/warwich-streamer-5-42630317.JPG",
      description: "This is a Warwick Streamer 5 string standard. Great look and feel with nice low tones.",
      category: "Bass",
      condition: "Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument1.user = user_lender1
instrument1.save!

instrument2 = Instrument.new({
      post_name: "M-Audio Axiom 61 Midi Keyboard",
      image: "https://assets.fatllama.com/images/medium/maudio-axiom-61-midi-keyboard-94427831.jpeg",
      description: "The Axiom 61 is an advanced 61-key USB mobile MIDI controller with semi-weighted action and assignable aftertouch. Eight rubberized trigger pads are ideal for creating drum tracks and firing samples. ",
      category: "Keyboard",
      condition: "Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument2.user = user_lender1
instrument2.save!

instrument3 = Instrument.new({
      post_name: "Fender Stratocaster",
      image: "https://assets.fatllama.com/images/medium/fender-stratocaster-69212234.jpeg",
      description: "Fender Stratocaster In case. Original authentic piece of kit.",
      category: "Electric guitar",
      condition: "Very Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument3.user = user_lender1
instrument3.save!

instrument4 = Instrument.new({
      post_name: "Wooden Dark Brown Acoustic Guitar - Yamaha F-310",
      image: "https://assets.fatllama.com/images/medium/wooden-dark-brown-acoustic-guitar--yamaha-f310-35447489.jpg",
      description: "A standard-size wooden acoustic guitar. Great for sing-alongs, camping, or even small-scale performances. For personal use, so taken care of well. Metal strings as opposed to Nylon, not cut-off fretboard. Comes with a clip-on Capo! Played pretty often so strings will be 'played in'. Comes with a guitar bag for easier transport!",
      category: "Acoustic guitar",
      condition: "Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument4.user = user_lender1
instrument4.save!

instrument5 = Instrument.new({
      post_name: "Erhu - Chinese Musical Instrument - New Condition",
      image: "https://assets.fatllama.com/images/medium/erhu--chinese-musical-instrument--new-condition-07160826.jpg",
      description: "An essentially new Erhu I bought in Hangzhou last year and never really used. Might need some tuning",
      category: "Other string instruments",
      condition: "Average",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument5.user = user_lender1
instrument5.save!

instrument6 = Instrument.new({
      post_name: "Gretsch Renown Maple Drum Kit",
      image: "https://assets.fatllama.com/images/large/gretsch-renown-maple-drum-kit-4pc--cymbals-06944456.jpg",
      description: "Gretsch Renown Maple Drum Kit.",
      category: "Drums",
      condition: "Very Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument6.user = user_lender2
instrument6.save!

instrument7 = Instrument.new({
      post_name: "Danelectro Longhorn Bass (58)",
      image: "https://assets.fatllama.com/images/medium/-danelectro-longhorn-bass-58-07943453.jpg",
      description: "Bass Guitar - Dead On Reissue 58.",
      category: "Bass",
      condition: "Very Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument7.user = user_lender2
instrument7.save!

instrument8 = Instrument.new({
      post_name: "Violin Pickup - The Band",
      image: "https://assets.fatllama.com/images/medium/violin-pick-up-the-band-56928890.jpg",
      description: "The Band violin pickup is an instant-fit pick-up which Velcro’s to itself around the body of the instrument. It requires no alteration of the instrument itself and generates a strong passive (no batteries required) signal which can usually be plugged straight into a mixing desk or combo amp.",
      category: "Violin",
      condition: "Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument8.user = user_lender2
instrument8.save!

instrument9 = Instrument.new({
      post_name: "Hollow Body Semi-Acoustic Electric Guitar",
      image: "https://assets.fatllama.com/images/medium/hollow-body-semiacoustic-electric-guitar-36930678.jpg",
      description: "The Ibanez Artcore AF75-BS is a fully hollow bodied archtop guitar with the traditional single cutaway and 2 humbucker design. Chip on upper lefthand corner of the body.",
      category: "Semi-Acoustic Guitar",
      condition: "Good",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument9.user = user_lender2
instrument9.save!

instrument10 = Instrument.new({
      post_name: "Flute - Boosey and Hawkes",
      image: "https://assets.fatllama.com/images/medium/flute--boosey-and-hawkes--64664559.JPG",
      description: "I'm listing my well loved Boosey and Hawkes flute for rental. This is a great little flute, easy to play with a very nice tone; perfect for a new learner, or a more advanced player looking for a flute to play while visiting the city.",
      category: "Flute",
      condition: "Average",
      location: Faker::Address.city,
      price: Faker::Number.between(20, 99),
      available: true
      })
instrument10.user = user_lender2
instrument10.save!

puts "finish"

# puts "users done"
# booking.user = user.where(user_id = rand(1..30))

# puts "fatal error"



