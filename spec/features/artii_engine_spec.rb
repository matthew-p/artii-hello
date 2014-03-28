require "./app.rb"
require 'rspec'
require 'rack/test'

describe "the pages" do
  include Rack::Test::Methods


  def app
    Sinatra::Application
  end

  it "the home page should display 'Hello!'" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Hello!")
  end

  it "the output page should display 'Output' and 'Hello, john!' in ascii text" do
    get '/output?name=john&font=alphabet'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Output")
    expect(last_response.body).to include("HHHH")
    expect(last_response.body).to include("jj")
  end

  it "should display a list of recent users 'john' & 'smith'" do
    get '/output?name=smith&font=alphabet'
    get '/recent'
    expect(last_response).to be_ok
    expect(last_response.body).to include("john")
    expect(last_response.body).to include("smith")
  end

  it "should delete the content of the yaml file" do
    get "/kill-yaml"
    get "/recent"
    expect(last_response).to be_ok
    expect(last_response.body).not_to include("john")
    expect(last_response.body).not_to include("smith")
  end

end
