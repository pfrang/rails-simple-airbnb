# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
4.times do
  Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.street_name,
    description: Faker::Games::LeagueOfLegends.rank,
    price_per_night: (50..200).to_a.sample,
    number_of_guests: (0..5).to_a.sample
  )
end
