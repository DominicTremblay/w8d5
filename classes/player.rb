class Player

  attr_reader :name, :ap
  attr_accessor :hp

  def initialize(name)
    @name=name
    @hp=20
    @ap=10
  end

  # def name
  #   @name
  # end

  # def hp
  #   @hp
  # end

  # def hp=(points)
  #   @hp = points
  # end

  # def ap
  #   @ap
  # end


  def attacks(ennemy)
    puts "#{@name} attacks #{ennemy.name}"
    damage = rand(@ap) + 1
    ennemy.takes_damage(damage)
  end
  
  def takes_damage(points)
    puts "#{@name} is taking #{points} points of damage!"
    @hp -= points
  end

  def dead?
    @hp <= 0
  end
    
end