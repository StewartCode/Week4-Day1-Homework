require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("models/game")

get "/rps/:player1/:player2" do
  game = Game.new(params[:player1], params[:player2])
    @result = game.game_outcome()
    erb( :winner )
end

get "/" do
    erb( :home )
end
