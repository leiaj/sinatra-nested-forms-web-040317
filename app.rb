require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    get '/pirates' do
      erb :"pirates/show"
    end

    post '/pirates' do
      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      @ships = []
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(name: ship_data[:name], type: ship_data[:type], booty: ship_data[:booty])
        @ships << ship
      end
      erb :"/pirates/show"
    end

  end
end
