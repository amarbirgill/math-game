class Player

  attr_reader :player_score, :player_name, :player_lives

  def initialize(name)
    @player_name = name
    @player_score = 0
    @player_lives = 3
  end

  def score
    @player_score += 1
  end

  def lose_life
    @player_lives -= 1
  end

  def dead?
    @player_lives == 0
  end

  def reup
    @player_lives = 3
    @player_score = 0
  end

end