require_relative './player'

class Game


  def initialize

    @player1 = Player.new('LeBron')
    @player2 = Player.new 'Kevin'
    @players = [@player1, @player2].shuffle
    @round = 1

  end

  def display_scoreboard

    # display scoreboard

    puts "--------- Scoreboard -------------"
    puts "Name: #{@player1.name} Points: #{@player1.score}"
    puts "Name: #{@player2.name} Points: #{@player2.score}"

  end

  def next_round

       # display the round
       puts
       puts " ----------- Round ##{@round} -------------"
       puts

             # switch the player and do it again
      @round += 1
      @players.rotate!

  end

  def game_over?
    @player1.winner? || @player2.winner?
  end

  def winner
    @player1.winner? ? @player1.name : @player2.name
  end

  def display_winner

    puts
    puts "The winner is #{winner}"

  end

  def get_attack_player
    @players.first
  end

  def get_defense_player
    @players.last
  end


  def play


    until (game_over?) do

      next_round

      # attacking player => player object
      attack_player = get_attack_player

      # defense player => player object
      defense_player = get_defense_player

      attack_player.shoots

      display_scoreboard


      sleep 0.7

    end

    display_winner

  end


end

