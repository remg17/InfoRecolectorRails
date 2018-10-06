class RouteStop < ApplicationRecord
    # Relación con las tablas Route y Stop
    belongs_to :route
    belongs_to :stop

    validates :order, presence: true
end
