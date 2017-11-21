require('minitest/autorun')
require('pry')
require_relative('../models/game.rb')


class TestGame < Minitest::Test

  def setup

    @game1 = Game.new('scissors','rock')
    @game2 = Game.new('rock', 'paper')
    @game3 = Game.new('scissors','paper')
    @game4 = Game.new('rock', 'rock')

  end

  def test_winner_rock()
    assert_equal('rock wins', @game1.find_winner())
  end

  def test_winner_paper
    assert_equal('paper wins', @game2.find_winner())
  end

  def test_winner_scissors
    assert_equal('scissors win', @game3.find_winner())
  end

  def test_draw
    assert_equal('Its a draw!', @game4.find_winner())
  end

end
