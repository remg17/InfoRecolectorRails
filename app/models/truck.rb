class Truck < ApplicationRecord
    # Relación con la tabla TypeTruck
    belongs_to :type_truck
    has_and_belongs_to_many :routes

    validates :name, presence: true
    validates :licensePlate, presence: true
end
