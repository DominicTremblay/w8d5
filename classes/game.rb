require_relative './player'

class Game

  def initialize
    @player1 = Player.new('LeBron James')
    @player2 = Player.new 'Stephen Curry'
    @player3 = Player.new 'Kevin Durant'
    @player4 = Player.new 'Kawhi Leonard'
    @players = [@player1, @player2, @player3, @player4].shuffle
    @round = 1
  end

  def next_round
      puts
      puts "------------- Round ##{@round} ------------------"
      puts
      @round += 1
      @players.rotate!
  end

  def get_attack_player
    @players.sample
  end

  def get_defense_player(attack_player)
    @players.select {|player| player != attack_player}.sample
  end

  def game_over
    @players.select {|player| player.winner?}.count > 0
  end

  def display_score_board
    puts
    puts "------------- Scoreboard ----------------"
    @players.each do |player| 
      puts "#{player.name} Score: #{player.score} "
    end
  end

  def getWinner
    @players.find {|player| player.winner?}
  end

  def display_winner
    puts "---------------- Game Over! ---------------"
    puts "The winner is #{getWinner.name}"
  end

  def play
    puts "Welcome to the LHL basketball finals!"


    
    until game_over do

      attack_player = get_attack_player
      defense_player = get_defense_player(attack_player)

      next_round

      attack_player.play_against(defense_player)

      display_score_board

      sleep 1
    end

    display_winner
  
  end

end

