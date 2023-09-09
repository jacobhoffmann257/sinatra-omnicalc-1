require "sinatra"
require "sinatra/reloader"

get("/square/new") do
erb(:square)
end
get("/square_root/new") do
  erb(:square_root)
end
get("/payment/new") do
  erb(:payment)
end
get("/random/new") do
  erb(:random)
end
get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
