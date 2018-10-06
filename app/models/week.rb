class Week < ApplicationRecord
    #Relación con la tabla RouteSchedule
    has_many :route_schedules
    has_many :routes, :through => :route_schedules

    validates :day, presence: true
end
