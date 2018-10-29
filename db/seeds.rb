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
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'users.json')))
records.each do |record|
    User.create!(record)
end
#stops
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'stops.json')))
records.each do |record|
    Stop.create!(record)
end
#type_trucks
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'type_trucks.json')))
records.each do |record|
    TypeTruck.create!(record)
end
#trucks
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'trucks.json')))
records.each do |record|
    Truck.create!(record)
end
#routes
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'routes.json')))
records.each do |record|
    Route.create!(record)
end
#truck_routes
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'truck_routes.json')))
records.each do |record|
    TruckRoute.create!(record)
end
#route_stops
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'route_stops.json')))
records.each do |record|
    RouteStop.create!(record)
end
#weeks
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'weeks.json')))
records.each do |record|
    Week.create!(record)
end
#route_schedules
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'route_schedules.json')))
records.each do |record|
    RouteSchedule.create!(record)
end
#recycling_points
records = JSON.parse(File.read(File.join(Rails.root, 'json', 'recycling_points.json')))
records.each do |record|
    RecyclingPoint.create!(record)
end