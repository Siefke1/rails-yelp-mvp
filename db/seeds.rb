# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning the Database"

Restaurant.destroy_all

category = ["chinese", "italian", "japanese", "french", "belgian"]
puts 'Creating 10 fake Restaurants...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    category: category[rand(0..4).to_i],
    phone_number: Faker::Number.leading_zero_number(digits: 10)
  )
  restaurant.save!
end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
