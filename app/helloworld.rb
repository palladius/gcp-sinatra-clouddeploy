require 'sinatra'
require 'JSON'

get '/' do
  "Hello World from Ricc!"
end

get '/hello-world.json' do
  content_type :json # Content-Type: application/json;charset=utf-8

  # Use to_json to generate JSON based on the Ruby hash
  {greeting: 'Hello World!'}.to_json
end