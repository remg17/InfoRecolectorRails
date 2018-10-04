require 'faraday'


client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end

# {response = client.stops do |req|
#     req.url '/api/v1/stops'
#     req.headers['Content-Type'] = 'application/json'
#     req.body = '{"stop":{"address": "fedesoft"}}'
# end}

response = client.get do |req|
    req.url '/api/v1/stops'
    req.headers['Content-Type'] = 'application/json'
end

require 'oj'
puts Oj.load(response.body)
puts response.status
