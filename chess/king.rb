require_relative 'piece'

class King < SteppingPiece
  def symbol
    @color == :white ? ♕ : ♛
  end
end
