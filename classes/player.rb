class Player

  attr_accessor :name, :number_of_lives

  def initialize(name)
    @name = name
    @number_of_lives = 3
  end

  def lose_life
    @number_of_lives -= 1
  end

end
