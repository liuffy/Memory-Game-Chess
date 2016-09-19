require_relative "piece"
require 'byebug'
class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    setup_board
  end

  def setup_board
      @grid.each do |row|
        row.map do |square|
        Piece.new
      end
    end
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end

  def move(start_pos, end_pos)
    unless move_valid?(start_pos, end_pos)
      raise ArgumentError.new "not a valid move"
    end

    begin
    rescue ArgumentError => e
    end

  end

  def move_piece!(start_pos, end_pos)
  end

  def checkmate?()
    #  def find_king(color)
  end

  def in_bounds?(pos)
    byebug
    !self[pos].nil?
  end

end
