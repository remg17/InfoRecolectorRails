require 'faraday'


client = Faraday.new(url: 'http://info-recolector-rails.herokuapp.com') do |config|
    config.adapter Faraday.default_adapter
end

#INSERCIÓN
# response = client.post do |req|
#     req.url '/api/v1/users'
#     req.headers['Content-Type'] = 'application/json'
#     req.body = '{"user":{"username": "ftalero"
#                             , "name": "Fredy"
#                             , "lastname": "Talero"
#                             , "email": "ftalero@123.com"
#                             , "password": "123456789"}}'
# end

#ELIMINAR
response = client.delete do |req|
    req.url '/api/v1/users/4'
    req.headers['Content-Type'] = 'application/json'
end


#CONSULTA
# response = client.get do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
# end

require 'oj'
puts Oj.load(response.body)
puts response.status
