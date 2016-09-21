require_relative 'piece'

class King < SteppingPiece
  def symbol
    @color == :white ? ♕ : ♛
  end

  def move_diffs
    moves = [[-1,0],[0,-1], [1,0], [0,1]]
  end
end
