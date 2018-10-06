class TypeTruck < ApplicationRecord
    # Relacción con la tabla Truck
    has_many :trucks
    
    validates :name, presence: true
    validates :description, presence: true
end
