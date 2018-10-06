class TypeTruck < ApplicationRecord
    has_many :trucks
    validates :name, presence: true
    validates :description, presence: true
end
