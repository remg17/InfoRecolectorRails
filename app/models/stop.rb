class Stop < ApplicationRecord
    has_many :route_stops
    has_many :routes, :through => :route_stops

    validates :address, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
end
