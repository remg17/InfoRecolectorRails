class RecyclingPointSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :latitude, :longitude
end
