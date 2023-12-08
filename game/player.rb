class Player

  attr_reader :name

  # attr_writer :score

  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  # # getter
  # def name
  #   @name
  # end

  # def score
  #   @score
  # end

  def shoot

    puts "#{@name} shoots"
    puts
    # generate the score
    score = rand(0..2)
    # increase the score of the player
    @score += score

  end

  def winner?
    @score >= 11
  end

end