require_relative 'piece'

  class Knight < SteppingPiece
    def symbol
      @color == :white ? ♘ : ♞
    end

end
