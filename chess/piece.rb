require_relative 'queen'
require_relative 'rook'
require_relative 'bishop'


class Piece
  attr_reader :color, :pos, :board
  attr_accessor :pos

   def initialize(color, pos, board, type)
     @color = [:white, :black]
     @pos = pos
     @board = board
     @type = type
   end


   def to_s

   end

  #  def empty?
   #
  #  end

   def symbol

   end

   def valid_moves

   end

   def move_into_check?(to_pos)

   end
end


class SlidingPiece < Piece

  def moves
    #can't be on square with the same color
    #can't be off the board  @board.in_bounds(pos)
    valid_moves = []
    move_dirs.

  end

  private

   def move_dirs()
   end

   def horizontal_dirs(pos)
     DIRS = [[0,1],[0,-1],[1,0],[-1,0]]

     horiz_dirs = []
     right = pos[1]
     new_pos = [pos[0], right + 1]

     while @board.in_bounds(new_pos)
       horiz_dirs << new_pos
       right += 1
       new_pos = [pos[0], right]
     end
   end
  #
   def diagonal_dirs(pos)
     diag_dirs = []
     while @board.in_bounds(new_pos)

     end
   end
  #
  # def grow_unblocked_moves_in_dirs(dx, dy)
  # end

end

class SteppingPiece < Piece

end
