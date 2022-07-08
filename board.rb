class Board

  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    @board = <<-BOARD
    #{@cells[0]} | #{@cells[1]} | #{@cells[2]}
   ---+---+---
    #{@cells[3]} | #{@cells[4]} | #{@cells[5]}
   ---+---+---
    #{@cells[6]} | #{@cells[7]} | #{@cells[8]}
   BOARD
  end

  def show_board
    puts @board
  end

  def update_cell(position, symbol)
    @cells[position + 1] = symbol
    show_board
  end
end
