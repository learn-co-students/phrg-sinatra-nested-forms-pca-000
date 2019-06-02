require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do

      @pirate = Pirate.new
      @pirate.name = params[:pirate][:name]
      @pirate.weight = params[:pirate][:weight]
      @pirate.height = params[:pirate][:height]

      params[:pirate][:ships].each do |data_hash|
        Ship.new(data_hash)
      end
      @ships = Ship.all

      # # @ship_1.booty = params[:pirate][:ships][][:booty]
      # # @ship_2.name = params[:pirate][:ships][][:name]
      # # @ship_2.type = params[:pirate][:ships][][:type]
      # # @ship_2.booty = params[:pirate][:ships][][:booty]
      #use each_with_index on params[:pirate][:ships] and use Ship.All to view the created ships and assign them variables.


      erb :show
    end

  end
end
