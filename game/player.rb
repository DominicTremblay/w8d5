class Player

  #getter
  attr_reader :name #:score
  #setter
  # attr_writer :score
  #both getter and setter
  attr_accessor :score


  def initialize(name)
    #instance variables
    @name = name
    @score = 0
    @color = 'red'
  end

  def shoots(defend_player)

    puts "#{@color}" => error

    puts "#{@name} is playing against #{defend_player.name}"
    puts "#{@name} shoots!"
    score = rand(1..2)
    puts "#{@name} has scored #{score} points"
    @score += score

  end

  def winner?
    @score >= 11
  end

  #getter to access the properties of the class
  # def name
  #   @name
  # end

  # def score
  #   @score
  # end

  # #setter
  # def score=(points)
  #   @score += points
  # end

end