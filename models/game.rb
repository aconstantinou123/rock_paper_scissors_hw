class Game

    attr_accessor :player1, :player2

  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
  end

  def find_winner()
    if (@player1 == 'rock' && @player2 == 'scissors')
      return "Rock crushes scissors. Player 1 wins"
    elsif (@player1 == 'scissors' && @player2 == 'rock')
      return "Rock crushes scissors. Player 2 wins"
    elsif (@player1 == 'rock' && @player2 == 'paper')
      return "Paper obliterates rock. Player 1 wins"
    elsif (@player1 == 'paper' && @player2 == 'rock')
      return "Paper obliterates rock. Player 2 wins"
    elsif (@player1 == 'paper' && @player2 == 'scissors')
      return 'Scissors eviscerate paper. Player 1 wins'
    elsif (@player1 == 'scissors' && @player2 == 'paper')
      return 'Scissors eviscerate paper. Player 2 wins'
    else
      return 'Its a draw!'
    end
  end

end
