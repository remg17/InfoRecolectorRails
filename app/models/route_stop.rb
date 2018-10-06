class RouteStop < ApplicationRecord
    validates :order, presence: true
end
