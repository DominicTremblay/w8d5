class Player

  attr_reader :name #getter
  attr_accessor :score #getter + setter
  # attr_writer => setter only

  # constructor
  def initialize(name)
    @name = name
    @score = 0
  end

  def shoots

    # player 1 will throw the ball => 1, 2 
    puts "#{@name} is shooting..."

    # generate random number between 0,2
    score = rand(0..2)
  
    puts "#{@name} has scored #{@score}"
    # Increase the score of the player
    @score += score

  end


  def winner?
    @score >= 11
  end
  # getters and setters

  # def name
  #   @name
  # end

  # def score=(points)
  #   @score = points
  # end

  # def score
  #   @score
  # end





end