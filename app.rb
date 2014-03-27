require 'sinatra'
require 'artii'
require './lib/artii_engine'
require 'yaml/store'

get '/' do
  erb :"index.html"
end

get '/output' do
  erb :'output.html'
end

get '/recent' do
  erb :'recent.html'
end
