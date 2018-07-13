require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    # get '/pirates' do
    #   erb :'pirates/show'
    # end

# extracts the form data from the params and uses it to create a new instance of your model class, something along the lines of Model.create(some_attribute: params[:some_attribute])
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each { |ship| Ship.new(ship) }
      @ships = Ship.all

      erb :'pirates/show'
    end


  end
end
