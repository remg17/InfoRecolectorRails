class Route < ApplicationRecord
    #Relación con la tabla Truck_Routes
    has_many :truck_routes
    has_many :trucks, :through => :truck_routes

    #Relación con la tabla RouteStop
    has_many :route_stops
    has_many :stops, :through => :route_stops

    #Relación con la tabla RouteSchedule
    has_many :route_schedules
    has_many :weeks, :through => :route_schedules

    validates :name, presence: true
end
