require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative 'models/game.rb'
also_reload('models/*') #tells Sinatra to reload whenever we change/update a file



get '/game/:hand1/:hand2' do
   game = Game.new(params[:hand1].downcase.to_s(), params[:hand2].downcase.to_s())
   @result =game.newgame
   erb(:result)
end


get '/welcome' do
  erb(:welcome)
end
