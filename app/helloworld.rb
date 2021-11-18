require 'sinatra'
require 'JSON'

$version = File.read("./VERSION")

get '/' do
  "Hello World from Ruby (Sinatra)! <br/>
  App Version: <b>#{$version}</b>"
end

get '/varz' do
  "TODO(ricc): some prometheus vars"
end



get '/hello-world.json' do
  content_type :json # Content-Type: application/json;charset=utf-8

  # Use to_json to generate JSON based on the Ruby hash
  {greeting: 'Hello World!'}.to_json
end