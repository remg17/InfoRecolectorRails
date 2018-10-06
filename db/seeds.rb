# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 15.times do
#     stops = Stop.create({address: Faker::Address.street_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})  
# end

10.times do
    type_trucks = TypeTruck.create({name: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs})
end