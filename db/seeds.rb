days = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
for day in days do
    routes = Week.create({day: day})
end

10.times do
    type_trucks = TypeTruck.create({name: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs})
    type_trucks.trucks.create({name: Faker::Vehicle.make, licensePlate: Faker::Vehicle.style}) 

    routes = Route.create({name: Faker::Superhero.name})
    stops = Stop.create({address: Faker::Address.street_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})
    
    recycling_points = RecyclingPoint.create({name: Faker::ParksAndRec.character, location: Faker::ParksAndRec.character, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude})  
    users = User.create({username: Faker::Internet.username, name: Faker::Name.first_name, lastname: Faker::Name.last_name,
        email: Faker::Internet.email, password: Faker::Internet.password(8)})
end
