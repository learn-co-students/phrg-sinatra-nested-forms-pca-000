require_relative 'config/environment'
require 'sinatra/base'
require 'sinatra/reloader' if ENV['RACK_ENV'] != 'production'

class App < Sinatra::Base
  configure :development, :test do
    register Sinatra::Reloader if defined?(Sinatra::Reloader)
    also_reload '**/*.rb'
  end

  get '/' do
    erb :root
  end

  get '/new' do
    erb :"pirates/new"
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end
    @ships = Ship.all

    erb :"pirates/show"
  end
end
