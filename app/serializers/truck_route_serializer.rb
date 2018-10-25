class TruckRouteSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :truck
  belongs_to :route
end
