class Truck < ApplicationRecord
    # Relación con la tabla TypeTruck
    belongs_to :typetruck
    has_and_belongs_to_many :routes

    validates :name, presence: true
    validates :licensePlate, presence: true
end
