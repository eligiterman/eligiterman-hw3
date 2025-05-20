# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Entry.destroy_all
Place.destroy_all

# Create Seoul and its entries
seoul = Place.create!(name: "Seoul")

seoul.entries.create!([
  {
    title: "Palace Visit",
    description: "We watched the changing of the guards today",
    occurred_on: Date.new(2025, 3, 17)
  },
  {
    title: "Karoake Night",
    description: "We rented a karoake room after dinner",
    occurred_on: Date.new(2025, 3, 18)
  }
])

# Create Bangkok and its entries
bangkok = Place.create!(name: "Bangkok")

bangkok.entries.create!([
  {
    title: "Reclining Buddha",
    description: "We visited the largest reclining buddha statue in the world",
    occurred_on: Date.new(2025, 3, 19)
  },
  {
    title: "Chinese Market",
    description: "We tried scorpion at the chinese market",
    occurred_on: Date.new(2025, 3, 20)
  }
])

# Create Whistler and its entries
whistler = Place.create!(name: "Whistler")

whistler.entries.create!([
  {
    title: "Powder Day",
    description: "We carved up the mountain all morning!",
    occurred_on: Date.new(2024, 12, 15)
  },
  {
    title: "Massages",
    description: "We got massages at the St.Regis",
    occurred_on: Date.new(2024, 12, 16)
  }
])

puts "There are now #{Place.count} places and #{Entry.count} entries."