#!/usr/bin/env ruby

class ChessBoard
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def valid_position?(pos)
    pos.match?(/^[a-h][1-8]$/)
  end

  def convert_position(pos)
    # Convert standard chess notation to array indices
    col = pos[0].ord - 'a'.ord
    row = pos[1].to_i - 1
    [row, col]
  end

  def can_queens_attack?(pos1, pos2)
    row1, col1 = convert_position(pos1)
    row2, col2 = convert_position(pos2)

    # Same row, column, or diagonal
    row1 == row2 || col1 == col2 || (row1 - row2).abs == (col1 - col2).abs
  end
end

if __FILE__ == $0
  if ARGV.length != 2
    puts "Usage: ./queens_attack.rb <position1> <position2>"
    exit
  end

  board = ChessBoard.new
  pos1, pos2 = ARGV

  unless board.valid_position?(pos1) && board.valid_position?(pos2)
    puts "Invalid positions. Use standard chess notation, e.g., a1, h8."
    exit
  end

  if board.can_queens_attack?(pos1, pos2)
    puts "Queens can attack each other."
  else
    puts "Queens cannot attack each other."
  end
end
