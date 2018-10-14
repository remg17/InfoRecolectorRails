require 'faraday'


client = Faraday.new(url: 'http://mysterious-retreat-79142.herokuapp.com/api/v1/stops') do |config|
    config.adapter Faraday.default_adapter
end

#INSERCIÓN
response = client.post do |req|
    req.url '/api/v1/stops'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{"stop":{"address": "fedesoft", "latitude": "1245879", "longitude": "12454587"}}'
end

#CONSULTA
# response = client.get do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
# end

require 'oj'
puts Oj.load(response.body)
puts response.status
