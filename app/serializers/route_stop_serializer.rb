class RouteStopSerializer < ActiveModel::Serializer
  attributes :id, :order
  belongs_to :route
  belongs_to :stop
end
