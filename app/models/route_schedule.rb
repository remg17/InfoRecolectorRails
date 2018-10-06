class RouteSchedule < ApplicationRecord
    # Relación con las tablas Route y Week
    belongs_to :route
    belongs_to :week

    validates :timStart, presence: true
    validates :timEnd, presence: true
end
