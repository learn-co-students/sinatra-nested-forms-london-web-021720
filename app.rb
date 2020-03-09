require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate_details = params
      @pirate = Pirate.new(@pirate_details["pirate"]["name"], @pirate_details["pirate"]["weight"], @pirate_details["pirate"]["height"])
      @pirate_details["pirate"]["ships"].each { |ship| Ship.new(ship["name"], ship["type"], ship["booty"]) }
      
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
