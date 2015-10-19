class Player

  attr_reader :score, :name, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def add_score
    @score += 1
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    @lives == 0
  end

  def reup
    @lives = 3
    @score = 0
  end

end