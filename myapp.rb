require 'sinatra'
require "sinatra/reloader" if development?
get '/' do

  'Hello !'
end

get '/:city' do # path variables
  "esta ciudad #{params[:city]}"
end

get '/dado/:numero' do
  num = 4
  if params[:numero].to_i == num
    erb :ganaste
  else
    "el fbi va por ti"
 end
end
