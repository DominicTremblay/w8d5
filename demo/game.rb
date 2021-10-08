require_relative './player'

class Game 

  # instance variables in constructor
  # '@' => instance variable, available on the class
  
  def initialize
    @player1 = Player.new("LeBron")
    @player2 = Player.new("Durant")
    @players = [@player1, @player2].shuffle 
    @round = 1
  end

  def game_over?
    @players.select {|player| player.winner?}.length > 0
  end

  def next_round
      # switch player and repeat
      @players.rotate!
      @round += 1
  end

  def display_game_status
    # display status of the game          
    puts "---------------------"
    @players.each{|player|  puts "Player: #{player.name} Score: #{player.score}"}

  end

  # create methods
  def play

    until (game_over?) do

      attack_player = @players.first
      defense_player = @players.last

      # Round
      puts " --------------- "
      puts "     Round##{@round}"
      puts

      attack_player.shoots
      display_game_status
  
      next_round
      sleep 0.5
      # display the winner
    end
  end

end


