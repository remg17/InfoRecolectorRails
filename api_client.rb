require 'faraday'


client = Faraday.new(url: 'http://info-recolector-rails.herokuapp.com') do |config|
    config.adapter Faraday.default_adapter
end

#INSERCIÓN
response = client.post do |req|
    req.url '/api/v1/users'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{"user":{"username": "rmunoz"
                            , "name": "Raúl E."
                            , "lastname": "Muñoz G."
                            , "email": "rmunoz@123.com"
                            , "password": "777"}}'
end

#CONSULTA
# response = client.get do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
# end

#ACTUALIZAR
# response = client.put do |req|
#     req.url '/api/v1/users/1'
#     req.headers['Content-Type'] = 'application/json'
#     req.body = '{"user":{"name": "J. Fredy"
#                     , "email": "ftalero@123.com.co"}}'
# end

#ELIMINAR
# response = client.delete do |req|
#     req.url '/api/v1/users/2'
#     req.headers['Content-Type'] = 'application/json'
# end

require 'oj'
puts Oj.load(response.body)
puts response.status
