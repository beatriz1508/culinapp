# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Path.destroy_all
paths = [
  { title: "Quick & Easy Meals", description: "Discover recipes that can be prepared in 30 minutes or less." },
  { title: "Healthy Options", description: "Explore nutritious meals that are both delicious and good for you." },
  { title: "Gourmet Delights", description: "Indulge in recipes that bring restaurant-quality dishes to your home kitchen." }
]
paths.each do |path|
  Path.create!(path)
end
puts "Seeded #{Path.count} paths successfully!"
