require_relative 'piece'

class Pawn
  def symbol
    @color == :white ? ♙ : ♟
  end
end
