require "sinatra"
require "webrick"
require "webrick/https"

set :server, 'webrick'

$counter = 0

get "/" do
  $counter += 1
  erb :index, locals: { counter: $counter }
end
