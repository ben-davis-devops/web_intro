require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World, this is a webpage"
end

get '/secret' do
  "This is a secret"
end

get '/car' do
  "There are several different types of cars, please be more specific!"
end

get '/porsche' do
  "nice choice, great car!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
