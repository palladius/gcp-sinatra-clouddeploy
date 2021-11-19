require 'sinatra'
#require 'JSON'

#TODO(ricc): use Sinatra reloader to test ENV
# https://towardsdatascience.com/how-to-dockerize-an-existing-sinatra-application-3a6943d7a428
$version = File.read("./VERSION")

get '/' do
  "Hello World from Ruby (Sinatra)!<br/>
  App Version: <b>#{$version} (ENV=#{ ENV["ENV"] }/APP_ENV=#{ ENV["APP_ENV"] rescue :dunno })</b>"
end

get '/varz' do
  "TODO(ricc): some prometheus vars"
end


# get '/hello-world.json' do
#   content_type :json # Content-Type: application/json;charset=utf-8

#   # Use to_json to generate JSON based on the Ruby hash
#   {greeting: 'Hello World!'}.to_json
# end
