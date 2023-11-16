# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Garden.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

puts "Creating gardens..."
garden = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "Finished adding gardens...."


puts "Creating plants..."
Plant.create!(
  name: "Koelreuteria paniculata",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/0/09/%28MHNT%29_Koelreuteria_paniculata_-Leaves_and_inflorescences_-_Palais_Niel.jpg",
  garden_id: garden.id
)

Plant.create!(
  name: "Pinus pinea",
  image_url: "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQJ4QCPqSPBRDq-7SPsx4ZuHP017FjQiO6RSG6FdOcdAyw4SfC33oJBIN0bvUI-PNC8AdRzS4QLt9GRxZo",
  garden_id: garden.id
)

Plant.create!(
  name: "Sambucus nigra",
  image_url: "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRLKnMyFurLLyI0QHRDeR9rMNysxRa5ZgiLDh1tUg-F8QW2-jo7uB1gFGIcPGkpOZCJFMPSrEEUTkWXk5Q",
  garden_id: garden.id
)

Plant.create!(
  name: "Arbutus unedo",
  image_url: "https://www.ornamental-trees.co.uk/images/arbutus-unedo-tree-p281-8587_image.jpg",
  garden_id: garden.id
)

puts "Creating tags..."
names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers Palm\ tree)

names.each do |name|
  Tag.create!(name: name)
end
