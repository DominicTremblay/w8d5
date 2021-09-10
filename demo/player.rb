class Player

  #getters
  attr_reader :name

  #setters
  # attr_writer :score

  #both getters and setters
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def winner?
    @score >= 11
  end

  def shoots(defense_player)

    points = rand(0..2)

    puts "#{@name} is shootting agains #{defense_player.name}"
    puts "#{@name} has score #{points} points!"

    @score += points

  end

  #getter
  # def name
  #   @name
  # end

  #getter
  # def score
  #   @score
  # end

  # #setter
  # def score=(nb_points)
  #   @score = nb_points
  # end

end