require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

    get '/pirates' do
      erb :'pirates/show'
    end

  end
end
