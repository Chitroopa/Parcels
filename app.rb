
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  heigth = params.fetch('height').to_i
  length = params.fetch('length').to_i
  depth = params.fetch('depth').to_i
  weight = params.fetch('weight').to_i
  @price = Parcels.new(heigth, length, depth, weight).parcel_price()
  erb(:result)
end
