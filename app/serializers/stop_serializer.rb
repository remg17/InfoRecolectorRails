class StopSerializer < ActiveModel::Serializer
    attributes :id, :address, :latitude, :longitude
end