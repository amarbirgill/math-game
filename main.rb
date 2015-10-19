game = Game.new

p "Welcome to super awesome math game!"
p "Player 1"
game.create_player
p "Player 2"
game.create_player
p "Here we go!"

while game.still_active?

  game.show_score


