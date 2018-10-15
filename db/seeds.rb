# days = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
# for day in days do
#     routes = Week.create({day: day})
# end

# 10.times do
#     type_trucks = TypeTruck.create({name: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs})
#     type_trucks.trucks.create({name: Faker::Vehicle.make, licensePlate: Faker::Vehicle.style}) 

#     routes = Route.create({name: Faker::Superhero.name})
#     stops = Stop.create({address: Faker::Address.street_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})
    
#     recycling_points = RecyclingPoint.create({name: Faker::ParksAndRec.character, location: Faker::ParksAndRec.character, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})  
#     users = User.create({username: Faker::Internet.username, name: Faker::Name.first_name, lastname: Faker::Name.last_name,
#         email: Faker::Internet.email, password: Faker::Internet.password(8)})
# end

#Usuarios
# records = JSON.parse(File.read(File.join(Rails.root, 'users.json')))
# records.each do |record|
#     User.create!(record)
# end
#recycling_points
records = JSON.parse(File.read(File.join(Rails.root, 'recycling_points.json')))
records.each do |record|
    RecyclingPoint.create!(record)
end
#route_schedules
records = JSON.parse(File.read(File.join(Rails.root, 'route_schedules.json')))
records.each do |record|
    RouteSchedule.create!(record)
end
#route_stops
records = JSON.parse(File.read(File.join(Rails.root, 'route_stops.json')))
records.each do |record|
    RouteStop.create!(record)
end
#routes
records = JSON.parse(File.read(File.join(Rails.root, 'routes.json')))
records.each do |record|
    Route.create!(record)
end
#stops
records = JSON.parse(File.read(File.join(Rails.root, 'stops.json')))
records.each do |record|
    Stop.create!(record)
end
#truck_routes
records = JSON.parse(File.read(File.join(Rails.root, 'truck_routes.json')))
records.each do |record|
    TruckRoute.create!(record)
end
#trucks
records = JSON.parse(File.read(File.join(Rails.root, 'trucks.json')))
records.each do |record|
    Truck.create!(record)
end
#type_trucks
records = JSON.parse(File.read(File.join(Rails.root, 'type_trucks.json')))
records.each do |record|
    TypeTruck.create!(record)
end
#weeks
records = JSON.parse(File.read(File.join(Rails.root, 'weeks.json')))
records.each do |record|
    Week.create!(record)
end