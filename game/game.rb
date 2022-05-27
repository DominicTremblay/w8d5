require_relative './player'

class Game

  # constructor 
  # data part
  def initialize
    @player1 = Player.new "LeBron"
    @player2 = Player.new "Durant"
    @player3 = Player.new "Curry"
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def next_round
    puts "-------------"
    puts "   Round##{@round}"
    puts "-------------"
    @round += 1
    @players.rotate!
    sleep 0.7
  end


  def game_over?
    @player1.winner? || @player2.winner?
  end

  def display_winner
   winner = @players.detect {|player| player.winner?}
   puts "the Winner is #{winner.name}"
  end

 def display_game_status
  
  puts "----------------------"
  @players.each {|player| puts "#{player.name} Score: #{player.score}"}
  puts "----------------------"
  puts
 end

  # methods
  # behaviours

  def play

    until(game_over?) do

      next_round
      attack_player =  @players.first
      defense_player = @players.last

      attack_player.shoots

      puts

      display_game_status      
      
    end
    display_winner
  end
end

# creating the instance of the class => object
game1 = Game.new

game1.play