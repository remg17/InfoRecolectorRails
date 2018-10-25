class Truck < ApplicationRecord
    # Relación con la tabla TypeTruck
    belongs_to :type_truck

    # Relación con la tabla Truck_Routes
    has_many :truck_routes
    has_many :routes, :through => :truck_routes

    validates :name, presence: true
    validates :licensePlate, presence: true
end
