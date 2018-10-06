class Route < ApplicationRecord
    #Relación con la tabla Truck
    has_and_belongs_to_many :trucks

    #Relación con la tabla RouteStop
    has_many :routestops
    has_many :stops, through => :routestops

    #Relación con la tabla RouteSchedule
    has_many :routeschedules
    has_many :weeks, through => :routeschedules

    validates :name, presence: true
end
