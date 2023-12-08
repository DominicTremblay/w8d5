require_relative './player'

class Game

  #object has 2 parts
  #1. data part => properties
  #2. actions or behaviors => methods

  # constructor
  def initialize

    # instance variables => they can be used throughout the class
    @player1 = Player.new("LeBron")
    @player2 = Player.new("Curry")
    @players = [@player1, @player2].shuffle
    @round = 1
    
  end

  def game_over?
    @player1.score >= 11 || @player2.score >= 11
  end

  def display_scoreboard
    puts
    puts "---------------------"
    puts"        Scoreboard "
    puts "Name: #{@player1.name} Score: #{@player1.score}"
    puts "Name: #{@player2.name} Score: #{@player2.score}"
    puts "---------------------"
    puts
  end

  def next_round
    sleep 0.5

    # next round
    @players.rotate!
    @round += 1
  end


  def play
   
    #game over? when a player will reach 11 pts
    until game_over? do
      puts "---------------------"
      puts "    Round##{@round}"
      puts "---------------------"
      puts

      # the attack player to shoot
      attack_player = @players.first

      attack_player.shoot

      # display the scoreboard
      display_scoreboard

      next_round

    end

    winner = @player1.winner? ? @player1 : @player2
    
    # display who is the winner
    puts
    puts "The winner is #{winner.name}"




  end

end

# instanciate the class

basketball_game = Game.new


basketball_game.play
