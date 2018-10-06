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

# 10.times do
#     type_trucks = TypeTruck.create({name: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs})
# end

# 10.times do
#     route_stops = RouteStop.create({order: Faker::Number.between(1, 10)})
# end

# 10.times do
#     route_schedules = RouteSchedule.create({timStart: Faker::Time.between(DateTime.now - 1, DateTime.now), timEnd: Faker::Time.between(DateTime.now - 1, DateTime.now)})
# end

# 15.times do
#     recycling_points = RecyclingPoint.create({name: Faker::ParksAndRec.character, location: Faker::ParksAndRec.character, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})  
# end
# end

# 10.times do
#     routes = Route.create({name: Faker::Superhero.name})
# end

# days = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
# for day in days do
#     routes = Week.create({day: day})
# end

10.times do
    users = User.create({username: Faker::Internet.username, name: Faker::Name.first_name, lastname: Faker::Name.last_name,
                        email: Faker::Internet.email, password: Faker::Internet.password(8)})
end
