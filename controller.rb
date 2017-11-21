require 'sinatra'
require 'sinatra/reloader'
require_relative('models/game.rb')

get '/' do

  erb(:welcome)

end

get '/game' do

  erb(:game_screen)

end

get '/game/:player1/:player2' do

  result = Game.new(params[:player1].to_s, params[:player2].to_s)
  @result = result.find_winner
  erb(:game)

end
