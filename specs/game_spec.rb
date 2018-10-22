require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new( "rock", "paper" )
  end

def test_player1_choice
    result = @game.player1_choice()
    assert_equal("rock", result)
end

def test_array_shuffle
   result = @game.player2_choice
   assert_equal("rock",result)
end

def test_game_outcome
    result = @game.game_outcome()
    assert_equal("player2 wins", result)

end
end
