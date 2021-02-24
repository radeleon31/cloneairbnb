# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Seed: Deleting existing records'

# Review.delete_all
# Booking.delete_all
Booking.delete_all
Helicopter.delete_all
User.delete_all


puts 'Seed: Seeding...'

user1 = User.create!(
  email: "blingbling@gmail.com",
  first_name: "bling bling",
  last_name: "Boy",
  password: "123456",
)

user2 = User.create!(
  email: "Nasaka@yahoo.com",
  first_name: "Nasaka",
  last_name: "Wind",
  password: "123456",
)

user3 = User.create!(
  email: "Komono@gmail.com",
  first_name: "shiro",
  last_name: "spider",
  password: "123456",
)



helicopter1 = Helicopter.new(
  price_hour: 650.00,
  occupancy: 4,
  autonomy: 30,
  category: "Robinson R44",
  city: "New York",
  description: "fastest around",
  status: true


)

helicopter1.user = user1
file = URI.open('https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/3c/04/70.jpg')
helicopter1.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter1.save!

helicopter2 = Helicopter.new(
  price_hour: 650.00,
  occupancy: 4,
  autonomy: 30,
  category: "Bell 407",
  city: "Boston",
  description: "Boom be wow!",
  status: true
)

helicopter2.user = user1
file = URI.open('https://lh3.googleusercontent.com/proxy/MuRWSxdQtUwpCQlJRiLWGxHz3Tp31t3e-rMF_ASH1HWxabFKT4OVq8Ug9kI5QW7EzbqLrZ30-VCKiSRNrz2lgy8AEX_nvPeYmqsjzogcpj8j7yp39Z505--rYO19')
helicopter2.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter2.save!

helicopter3 = Helicopter.new(
  price_hour: 650.00,
  occupancy: 4,
  autonomy: 30,
  category: "Bell 206",
  city: "Los Angeles",
  description: "The nicest helicopter",
  status: true
)

helicopter3.user = user2
file = URI.open('https://www.maxim.com/.image/t_share/MTcwOTA1NzE1NTI1ODIxNzU0/luxury-helicopters-4.jpg')
helicopter3.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter3.save!

# booking1 = Booking.create!(
#   description: "nothing like it"
#   rating: 5
#   total_amount: nil
#   user: user1,
#   Helicopter: helicopter1,
#   start_date: DateTime.strptime("02/22/2021 11:00", "%m/%d/%Y %H:%M"),
#   end_date: DateTime.strptime("02/22/2021 17:00", "%m/%d/%Y %H:%M"),
# )

# booking2 = Booking.create!(
#   description: "nothing like it"
#   rating: 5
#   total_amount: nil
#   user: user2,
#   Helicopter: helicopter3,
#   start_date: DateTime.strptime("02/22/2021 11:00", "%m/%d/%Y %H:%M"),
#   end_date: DateTime.strptime("02/22/2021 17:00", "%m/%d/%Y %H:%M"),
# )

# review1 = PilotReview.create!(
#   rating: 5,
#   description: "That trip was a wonderful experience!",
#   user: user1,
#   helicopter: helicopter1
# )

# review2 = PilotReview.create!(
#   rating: 5,
#   description: "I'm so amazed!",
#   user: user2,
#   helicopter: helicopter1
# )

# review3 = PilotReview.create!(
#   rating: 2,
#   description: "Best thing i have done",
#   user: user2,
#   helicopter: helicopter2
# )

puts 'seeding done'
