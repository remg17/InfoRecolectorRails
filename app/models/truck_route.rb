class TruckRoute < ApplicationRecord
    # Relación con las tablas Truck y Route
    belongs_to :truck
    belongs_to :route
end
