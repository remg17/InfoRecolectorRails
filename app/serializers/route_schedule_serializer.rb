class RouteScheduleSerializer < ActiveModel::Serializer
  attributes :id, :timStart, :timEnd
  belongs_to :route
  belongs_to :week
end
