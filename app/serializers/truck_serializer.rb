class TruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :licensePlate
  belongs_to :type_truck
end
