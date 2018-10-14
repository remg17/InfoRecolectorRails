require 'faraday'


client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end

#INSERCIÓN
# response = client.post do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
#     req.body = '{"stop":{"address": "Casa Fredy", "latitude": "987654321", "longitude": "987654321"}}'
# end

response = client.post do |req|
    req.url '/api/v1/users'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{"user":{"username": "ftalero"
                            , "name": "Fredy"
                            , "lastname": "Talero"
                            , "email": "ftalero@123.com"
                            , "password": "123456789"}}'
end


#CONSULTA
# response = client.get do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
# end

require 'oj'
puts Oj.load(response.body)
puts response.status
