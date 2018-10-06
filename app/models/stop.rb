class Stop < ApplicationRecord
    has_many :routestops
    has_many :routes, through => :routestops

    validates :address, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
end
