# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all if Rails.env.development?

5.times do
  Restaurant.create!({name: Faker::Restaurant.name, address: Faker::Address.street_address, category: ['chinese','italian','japanese','french','belgian'].sample, phone_number: Faker::IDNumber.south_african_id_number})
end

20.times do
  Review.create!({content: Faker::Quote.famous_last_words, rating: [0,1,2,3,4,5].sample, restaurant_id: [13,14,15,16,17].sample})
end

p "created"
