class RecyclingPoint < ApplicationRecord
    validates :name, presence: true
    validates :location, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
end
