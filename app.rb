require "sinatra"
require "sinatra/reloader"

get("/square/new") do
erb(:square)
end
get("/squarenumber") do
  number = params.fetch("square")
  @squared = number.to_f * number.to_f
  erb(:squarenumber)
end
get("/square_root/new") do

  erb(:square_root)
end
get("/findroot") do
  number = params.fetch("square")
  @squared = Math.sqrt(number.to_f)
  erb(:findroot)
end
get("/payment/new") do
  erb(:payment)
end
get("/payment/results") do
  
  erb(:calc)
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
