class Game 

  attr_reader :players, :player_index

  def initialize
    @players = []
    @player_index = 0
  end
  
  def still_active?
    if @players[0].dead? || @players[1].dead? 
      false
    else
      true
    end
  end

  def show_score
    p "The current score is:"
    p "#{@players[0].name}: #{@players[0].score
    }"
    p "#{@players[1].name}: #{@players[1].score
    }" 
  end

  def create_player
    p "What is your name?"
    name = gets.chomp
    player = Player.new(name)
    @players << player
  end

  def ask_question
    @answer = generate_question
    p "What is the solution to #{@num1} #{@sym} #{@num2}?"
    @player_answer = gets.chomp
  end

  def check_answer
    if @answer == @player_answer.to_i
      true
    else
      false
    end
  end

  def change_turn
    if @player_index == 0
      @player_index += 1
    else
      @player_index -= 1
    end
  end

  def current_player
    @players[@player_index]
  end

  def generate_question
    @num1, @num2 = rand(1..20), rand(1..20)
    @op = rand(1..4)

    case @op
      when 1
        @sym = "+"
        @num1 + @num2
      when 2
        @sym = "-"
        @num1 - @num2
      when 3 
        @sym = "*"
        @num1 * @num2
      when 4
        @sym = "/"
        @num1 / @num2
    end
  end


end