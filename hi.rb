require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 8888

get '/' do
  "42\n"
end

post '/' do
  # data = JSON.parse(request.body.read.to_s)
  # puts "data:"
  # pp data
  "42\n"
end
