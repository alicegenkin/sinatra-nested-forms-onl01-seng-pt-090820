# require './environment'

# module FormsLab
#   class App < Sinatra::Base
    
#     get '/' do
#      erb :root
#     end
    
#     get '/new' do
#       erb  :new
#   end

#   post '/pirates' do 
#     @pirate = Pirate.new(params[:pirate])
#     params[:pirate][:ships].each do |details|
#       Ship.new(details)
#     end
    
#   end


# end
# end
require './environment'

module FormsLab
  class App < Sinatra::Base
    # define your routes here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = params[:ship]
      erb :display 
    end
  end
end