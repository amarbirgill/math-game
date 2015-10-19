require_relative 'game'
require_relative 'player'

game = Game.new
@player_turn = 0

p "Welcome to super awesome math game!"
p "Player 1"
game.create_player
p "Player 2"
game.create_player
p "Here we go!"

while game.still_active?

  game.show_score

  if @player_turn == 0 
    p "#{game.players[0].name}"
    game.ask_question
    if game.check_answer
      p "That is correct!"
      p "Have a cookie .. err.. point"
      game.players[0].add_score
    else
      p "EHHNNN Wrong"
      game.players[0].lose_life
    end
    @player_turn = 1
  else
    p "#{game.players[1].name}"
    game.ask_question
    if game.check_answer
      p "That is correct!"
      p "Have a cookie .. err.. point"
      game.players[1].add_score
    else
      p "EHHNNN Wrong"
      game.players[1].lose_life
    end
    @player_turn = 0 
  end

  if (game.players[0].dead?) || (game.players[1].dead?) 
    if game.players[0].dead?
      game.show_score
      p "#{game.players[1].name} you are the winner!"
      p "Would you like to play again? (Y/N)"
      @restart = gets.chomp
      if @restart == "Y"
        game.players[0].reup
        game.players[1].reup
      else
        p "Thanks for Playing!"
      end
    else
      game.show_score
      p "#{game.players[0].name} you are the winner!"
      p "Would you like to play again? (Y/N)"
      @restart = gets.chomp
      if @restart == "Y"
        game.players[0].reup
        game.players[1].reup
      else
        p "Thanks for Playing!"
      end
    end
  end

end



  