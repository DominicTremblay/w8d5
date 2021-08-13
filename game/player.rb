class Player

  # getters
  attr_reader :name
  
  #setters
  # attr_writer :score

  # both getter and setter
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def shoots

    #attack player is going to score
    score = rand(1..2)

    # increase the score of that player
    self.score += score

    puts "#{self.name} shoots and score #{score} points!"

  end

  def winner?
    @score >= 11
  end


end