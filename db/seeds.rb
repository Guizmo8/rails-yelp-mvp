# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Creating restaurants..."
dishoom = {name: "Dishoom", category: "italian", phone_number:"1234", address: "7 Boundary St, London E2 7JE"}
pizza_east = {name: "Pizza East", category: "italian", phone_number: "4567", address: "56A Shoreditch High St, London E1 6PQ"}
lisboa = {name: "Lisboa", category: "chinese", phone_number: "8910", address: "Alvalde, Lisbon E1 6PQ"}
brussels = {name: "Brussels", category: "belgian", phone_number: "1112", address: "Saint Francois, Brussels E1 6PQ"}
hosomaki = {name: "hosomaki", category: "japanese", phone_number: "1213", address: "Marlybone, London E1 6PQ"}

[dishoom, pizza_east, lisboa, brussels, hosomaki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
