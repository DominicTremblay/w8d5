class Player 

  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def play_against(defense)

    puts "#{self.name} is playing against #{defense.name}"
    score = rand(1..2)
    self.makes_shot(score)
    
  end
  
  def makes_shot(points)
    puts "#{self.name} is scoring #{points} points"
    @score += points
  end

  def winner?
    @score >= 11
  end

end