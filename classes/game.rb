require_relative './player'

class Game

  def initialize
  
    @player1 = Player.new("Jar Jar Binx")
    @player2 = Player.new("c3po")
    @player3 = Player.new("Darth Vador")
    @player4 = Player.new("Underdog Champion")
     @players = [@player1, @player2, @player3, @player4].shuffle
    @round = 1
  
  end

  def display_round_status
    puts "----------------"
    puts "  Round ##{@round}"
    puts "----------------"
    @players.each{|player| puts "Jedi: #{player.name} HP: #{player.dead? ? "DEAD" : player.hp}"}
    puts
    

  end

  def display_winner
    puts "#{alive_players.first.name} wins!" 
  end


  def game_over?
    alive_players.count == 1
  end

  def get_current_jedi
    alive_players.first
  end

  def get_ennemy_jedi(current)
    alive_players.select{|player| player != current}.sample
  end

  def alive_players
    @players.select{|player| !player.dead?}
  end

  def next_round
    @round += 1
    sleep 1
    @players.rotate!
  end

  def play

    until(game_over?) do

      current_jedi = get_current_jedi
      enemey_jedi = get_ennemy_jedi(current_jedi)

      current_jedi.attacks(enemey_jedi)


      display_round_status
      
      next_round

    end

    display_winner

  end



end