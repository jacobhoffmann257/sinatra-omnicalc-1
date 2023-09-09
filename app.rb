require "sinatra"
require "sinatra/reloader"

get("/square/new") do
erb(:hello)
end
get("/square_root/new") do
  erb(:hello)
end
get("/payment/new") do
  erb(:hello)
end
get("/random/new") do
  erb(:hello)
end
get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
