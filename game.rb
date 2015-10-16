class Game 

  def initialize
    @players = []
    @player_index = 0
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


  private

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