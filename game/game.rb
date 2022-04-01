require_relative './player'

class Game

  def initialize
    @player1 = Player.new("LeBron")
    @player2 = Player.new("Curry")
    @players = [@player1, @player2].shuffle
    @round = 1

  end

  def game_over?
    @players.any? {|player| player.win?}
  end

  def next_round
    @players.rotate!
    @round += 1
  end

  def display_scores
    
    puts
    puts "------------Score Board -----------"
    @players.each {|player| puts "#{player.name} : #{player.score}"}    

  end


  def play

    until (game_over?) do

      puts "----------------"
      puts "Round #{@round}"
      puts "----------------"
      puts
      
      attack_player = @players.first
      defense_player =@players.last


      attack_player.shoots

      display_scores
      next_round
      sleep 0.7

    
    end
  end
end

game1 = Game.new

game1.play