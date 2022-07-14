class Game

  $game_over = false

  def initialize
    @board = Board.new
    puts "Enter a name for player 1: "
    @player_one = gets.chomp
    puts "Enter a name for player 2: "
    @player_two = gets.chomp
    @turn = true
    @board.show_board
  end

  def turn
    if @turn
      @current_player = @player_one
      @current_symbol = "x"
    else
      @current_player = @player_two
      @current_symbol = "o"
    end

    @position = 0
    until (@position > 0 && @position < 10)
      puts "#{@current_player} choose the position you want to go: "
      @position = gets.chomp.to_i
    end 

    @board.update_cell(@position, @current_symbol)
    @board.show_board

    game_over(@current_player) if @board.is_win?
    
    @turn = !@turn
  end

  def game_over(player)
    $game_over = true
    puts "Game over, #{player} wins!"
  end 
  
end
