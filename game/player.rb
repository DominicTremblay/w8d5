class Player

  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def win?
    @score >= 10
  end

  def shoots
    puts "#{@name} shoots the ball"
    score = rand(0..2)
    puts "#{@name} scores a #{score} points"
    @score += score
  end

  # def name
  #   @name
  # end

  # def score
  #   @score
  # end

  # def score=(new_score)
  #   @score = new_score
  # end

end