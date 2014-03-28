require 'sinatra'
require 'artii'
require './lib/artii_engine'
require 'yaml/store'




get '/' do
  @store = YAML::Store.new("users.yml")
  @store.transaction { @store[:users] ||= Array.new }
  erb :"index.html"
end

get '/output' do
  @store = YAML::Store.new("users.yml")
  @store.transaction { @store[:users] ||= Array.new }
  erb :'output.html'
end

get '/recent' do
  @store = YAML::Store.new("users.yml")
  @store.transaction { @store[:users] ||= Array.new }
  erb :'recent.html'
end

get '/kill-yaml' do
  @store = YAML::Store.new("users.yml")
  @store.transaction { @store[:users] = Array.new }
  erb :'kill-yaml.html'
end
