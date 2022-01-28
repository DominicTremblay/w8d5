require_relative './player'

class Game

  def initialize
    #data
    @player1 = Player.new('LeBron')
    @player2 = Player.new('Durant')
    @players = [@player1, @player2].shuffle
    @round = 1
    @limit = 11

  end

  def display_score

    puts
    puts " -------------------------- "
    puts " Scoreboard"
    puts " -------------------------- "
    puts

    @players.each {|player| puts "Player: #{player.name} Score: #{player.score}"}


  end

  #methods => behaviours

  def next_round

    @round += 1
    #switch the player
    @players.rotate!
    sleep 0.1
  end

  def game_over?
    @player1.score >= @limit || @player2.score >= @limit
  end

  def declare_winner
    @players.detect {|player| player.winner?}
  end

  #main game loop
  def play

    until (game_over?) do

      shooting_player = @players.first
      defending_player = @players.last

      puts " -------------------------- "
      puts "         Round ##{@round}"
      puts " -------------------------- "

      shooting_player.shoots(defending_player)

      display_score

      
      next_round
    end
    puts "Winnder is: #{declare_winner.name}"
  end
end

#create the instance of a game

game1 = Game.new
game1.play
