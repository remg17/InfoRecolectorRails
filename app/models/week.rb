class Week < ApplicationRecord
    #Relación con la tabla RouteSchedule
    has_many :routeschedules
    has_many :routes, through => :routeschedules

    validates :day, presence: true
end
