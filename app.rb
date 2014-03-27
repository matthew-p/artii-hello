require 'sinatra'
require 'artii'
require './lib/artii_engine'

get '/' do
  erb :"index.html"
end

get '/output' do
  erb :'output.html'
end
