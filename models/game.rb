class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def player2_choice()
    array = ["rock","paper","scissors"]
    result = array.shuffle
    return result[0]
  end

  def player1_choice()
    return @player1
  end

  def game_outcome()
    if @player1 == @player2
      return "draw, play again"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "player1 wins"
    elsif @player1== "paper" && @player2 == "rock"
      return "player1 wins"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "player1 wins"
    else
      return "player2 wins"
    end
  end


end
