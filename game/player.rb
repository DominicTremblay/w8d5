class Player

  # getters
  attr_reader :name

  # setters
  # attr_writer

  #both getters and setters
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def winner?
    @score >= 5
  end

  def shoots

    puts "#{@name} shoots!"
    score = rand(0..2)
    puts "#{@name} score #{score} points!"
    @score += score

  end

  # def name
  #   @name
  # end

  # #getter
  # def score
  #   @score
  # end

  # #setter
  # def score=(points)
  #   @score = points
  # end


end