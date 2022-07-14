class Board
  WINNING_CELLS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],[0, 3, 6], [1, 4, 7], [2, 5, 8],[0, 4, 8], [6, 4, 2]]
  
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def show_board
    puts <<-BOARD
    #{@cells[0]} | #{@cells[1]} | #{@cells[2]}
   ---+---+---
    #{@cells[3]} | #{@cells[4]} | #{@cells[5]}
   ---+---+---
    #{@cells[6]} | #{@cells[7]} | #{@cells[8]}
    BOARD
  end

  def update_cell(position, symbol)
    @cells[position - 1] = symbol
  end

  def is_win?
    WINNING_CELLS.any? do |combo|
      [@cells[combo[0]], @cells[combo[1]], @cells[combo[2]]].uniq.length == 1      
    end
  end

end
