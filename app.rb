require "sinatra"
require "sinatra/reloader"
require "active_support/all"
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
  apr_raw = params.fetch("user_apr").to_f
  @aprstring = apr_raw.to_fs(:percentage, { :precision => 4 })
  @years = params.fetch("user_years").to_f
  @pv = params.fetch("user_pv").to_f

  n = @years * 12
  apr = apr_raw / 100
  r = apr/12
  numerator = r * @pv
  denominator = 1- ((1+r)**-n)
  payment = numerator/denominator
  @paymentstring  =  payment.to_fs(:currency)  
  erb(:calc)
end
get("/random/new") do
  erb(:random)
end
get("/random/results") do
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  @num = rand(@min .. @max)
erb(:randomness)
end
get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
