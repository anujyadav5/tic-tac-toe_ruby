require_relative 'board.rb'
require_relative 'game.rb'
require_relative 'player.rb'

replay = true

while replay do
  @game = Game.new

  until $game_over do
    @game.turn
  end

  replay = false
  
  puts "Do you want to play again? (Y/N): "
  play_again = gets.chomp

  if play_again == "Y"
    replay = true
    $game_over = false
  end
  
end
