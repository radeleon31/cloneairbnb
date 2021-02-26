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
  autonomy: 300,
  category: "Robinson R44",
  city: "New York",
  description: "Fastest around the city",
  status: true


)

helicopter1.user = user1
file = URI.open('https://images.assettype.com/fortuneindia%2F2019-11%2F50a40f06-784e-4d5c-8538-cfdc2df54668%2FIMG_0542.jpg?rect=0,683,3887,2186&w=1250&q=60')
helicopter1.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter1.save!

helicopter2 = Helicopter.new(
  price_hour: 750.00,
  occupancy: 6,
  autonomy: 400,
  category: "Bell 407",
  city: "Boston",
  description: "Stylish interior",
  status: true
)

helicopter2.user = user1
file = URI.open('https://assets.newatlas.com/dims4/default/64e414a/2147483647/strip/true/crop/1800x1200+0+27/resize/1200x800!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Farchive%2Fec145-mercedes-benz-style.jpg')
helicopter2.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter2.save!

helicopter3 = Helicopter.new(
  price_hour: 550.00,
  occupancy: 3,
  autonomy: 30,
  category: "RC 206",
  city: "Los Angeles",
  description: "Powerful engine",
  status: true
)

helicopter3.user = user2
file = URI.open('https://i.pinimg.com/originals/a4/79/f0/a479f05d3d5efb8c488cdc441b511721.jpg')
helicopter3.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter3.save!

helicopter4 = Helicopter.new(
  price_hour: 880.00,
  occupancy: 7,
  autonomy: 700,
  category: "Air 5000",
  city: "Florida",
  description: "Brand new model",
  status: true

)

helicopter4.user = user1
file = URI.open('https://www.superior-air.gr/wp-content/uploads/2013/04/Bell-407-at-Athens-International-Airport-2-1620x1080.jpg')
helicopter4.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter4.save!

helicopter5 = Helicopter.new(
  price_hour: 980.00,
  occupancy: 10,
  autonomy: 1000,
  category: "US Air 10000",
  city: "Washington",
  description: "Comfortable and safe",
  status: true

)

helicopter5.user = user1
file = URI.open('https://www.ainonline.com/sites/ainonline.com/files/styles/ain30_fullwidth_large/public/uploads/2020/02/lockheed_martin_corporation_presidential_helicopter.jpg?itok=ztkCdMI3&timestamp=1582278884')
helicopter5.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter5.save!

helicopter6 = Helicopter.new(
  price_hour: 1000.00,
  occupancy: 10,
  autonomy: 1000,
  category: "Apache 10",
  city: "Irak",
  description: "The strongest and safest",
  status: true

)

helicopter6.user = user1
file = URI.open('https://akm-img-a-in.tosshub.com/indiatoday/images/story/202007/apache_dd_news_twitter.jpeg?EmSNuyjGmmY.sAHoqyjp56_3JrvCB7y6&size=770:433')
helicopter6.photo.attach(io: file, filename: 'helicopter-1.png', content_type: 'image/png')
helicopter6.save!

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
