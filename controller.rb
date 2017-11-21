require 'sinatra'
require 'sinatra/reloader'
require_relative('models/game.rb')

get '/:player1/:player2' do

  result = Game.new(params[:player1].to_s, params[:player2].to_s)
  return result.find_winner

end
