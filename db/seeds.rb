# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# dishroom = Restaurant.new(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0251555522", category: "french" rating: 5)
# dishroom.save!

# pizza_east = Restaurant.new(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0756859623", category: "italian", rating: 4)
# pizza_east.save!

# japony = Restaurant.new(name: "Japony", address: " 22-23 Woodstock St, London W1C 2AR", phone_number: "44 20 7629 3931", category: "japanese", rating: 3)
# japony.save!

# bengal_village = Restaurant.new(name: "Bengal Village", address: "75 Brick Ln, London E1 6QL", phone_number: "44 20 7366 4868", category: "belgian", rating: 2)
# bengal_village.save!

# hunan = Restaurant.new(name: "Hunan", address: "51 Pimlico Rd, London SW1W 8NE", phone_number: "44 20 7730 5712", category: "chinese", rating: 4)
# hunan.save!

require 'faker'

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )
  restaurant.save!
end
puts 'Finished!'
