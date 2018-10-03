json.array! @stops do |stop|
    json.address stop.address
    json.latitude stop.latitude
    json.longitude stop.longitude
end