class Game

    attr_accessor :player1, :player2

  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
  end

  def find_winner()
    if (@player1 == 'rock' && @player2 == 'scissors') ||
       (@player1 == 'scissors' && @player2 == 'rock')
      return 'rock wins'
    elsif (@player1 == 'rock' && @player2 == 'paper') ||
      (@player1 == 'paper' && @player2 == 'rock')
      return 'paper wins'
    elsif
      (@player1 == 'paper' && @player2 == 'scissors') ||
      (@player1 == 'scissors' && @player2 == 'paper')
      return 'scissors win'
    else
      return 'Its a draw!'
    end
  end

end
