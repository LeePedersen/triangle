require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:new_triangle)
end

post('/triangle') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  @new_triangle = Triangle.new(side1, side2, side3)
  # if new_triangle.is_real?
  #   new_triangle.type()
  # end
  erb(:triangle)
end
