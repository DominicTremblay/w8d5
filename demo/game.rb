require_relative './player'

class Game

  # constructor
  def initialize
    @player1 = Player.new('LeBron')
    @player2 = Player.new('Durant')
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def game_over?
    @player1.winner? || @player2.winner?
  end

  def next_round
    puts "------------------"
    puts "     Round ##{@round}"
    puts "------------------"
    puts
    # next round
    @round += 1
    @players.rotate!
  end

  def display_score
    puts "---------------------------"
    puts "      Scoreboard           "
    puts "---------------------------"

    puts "#{@player1.name} Score: #{@player1.score}"
    puts "#{@player2.name} Score: #{@player2.score}"
  end

  def display_winner
    winner = @player1.winner? ? @player1 : @player2

    puts
    puts "The winner is #{winner.name}!!!"
  end

  def play
    # puts @player1.inspect
    # puts @player2.inspect


    until(game_over?) do

      next_round

      attack_player = @players.first
      defense_player = @players.last

      attack_player.shoots(defense_player)

      display_score

      sleep 0.5

    end #closing the until

    display_winner


  end



end

s