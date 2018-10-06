class RouteSchedule < ApplicationRecord
    validates :timStart, presence: true
    validates :timEnd, presence: true
end
