# require_relative 'queen'
# require_relative 'rook'
# require_relative 'bishop'
require_relative "board"

class Piece
  attr_accessor :color, :pos, :board


   def initialize(color, pos, board)
     @color = [:white, :black]
     @pos = pos
     @board = board
   end


   def to_s

   end

   def symbol

   end

   def valid_moves

   end

   def move_into_check?(to_pos)

   end
end

HORIZONTAL_DIFFERENTIALS = [
  [0,1],
  [0,-1],
  [1,0],
  [-1,0]]

  DIAGONAL_DIFFERENTIALS = [
    [1,1],
    [-1,1],
    [-1,-1],
    [1,-1]
  ]

class SlidingPiece < Piece


  def moves
    #can't be on square with the same color
    #can't be off the board  @board.in_bounds?(pos)
    # (horiz_dirs + diagonals_dirs).each do |dir|


  end

  def valid_moves_in_one_direction(pos, x_diff, y_diff)
    all_the_positions = []
    new_position = [pos[0] + x_diff, pos[1] + y_diff]
    while @board.in_bounds?(new_position)
      break if @board[pos].color == @board[new_position].color
      all_the_positions << new_position

      new_position = [new_position.first + x_diff, new_position.last + y_diff ]
    end
    all_the_positions
  end

  def horizontal_dirs(pos)
    horiz_dirs = []
    HORIZONTAL_DIFFERENTIALS.each do |(x_diff, y_diff)|
      horiz_dirs.push(*valid_moves_in_one_direction(pos, x_diff, y_diff))
    end
    horiz_dirs
  end

  def diagonal_dirs(pos)
    diag_dirs = []
    DIAGONAL_DIFFERENTIALS.each do |(x_diff, y_diff)|
      diag_dirs.push(*valid_moves_in_one_direction(pos, x_diff, y_diff))
    end
    diag_dirs
  end


  private

   def move_dirs()
   end


  #
  # def grow_unblocked_moves_in_dirs(dx, dy)
  # end

end

class SteppingPiece < Piece

end
