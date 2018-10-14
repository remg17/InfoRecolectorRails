require 'faraday'


client = Faraday.new(url: 'http://info-recolector-rails.herokuapp.com/api/v1/stops') do |config|
    config.adapter Faraday.default_adapter
end

#INSERCIÓN
response = client.post do |req|
    req.url '/api/v1/stops'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{"stop":{"address": "Casa Fredy", "latitude": "987654321", "longitude": "987654321"}}'
end

#CONSULTA
# response = client.get do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
# end

require 'oj'
puts Oj.load(response.body)
puts response.status
