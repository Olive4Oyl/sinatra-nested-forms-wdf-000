require 'pry'
require './environment'

module FormsLab
  class App < Sinatra::Base

  	get '/' do 
  		erb :root
  	end

  	get '/' do 
  		erb :"pirates/index"
  	end

  	get '/new' do
  		erb :"pirates/new"
  	end

  	post '/pirates' do 
  		@new_pirate = Pirate.new(params[:pirate])

  		params[:pirate][:ships].each do |ship|
  			Ship.new(ship)
  			# binding.pry
  		end

  		@ships = Ship.all
  		

  		erb :"pirates/show"
  	end

  end
end
