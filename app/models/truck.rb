class Truck < ApplicationRecord
    validates :name, presence: true
    validates :licensePlate, presence: true
end
