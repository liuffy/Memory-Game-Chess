require_relative 'piece'

  class Knight < SteppingPiece
    def symbol
      @color == :white ? ♘ : ♞
    end

    def move_diffs
      moves = [[-2,1],[2,1], [2,-1], [-2,-1], [1,-2], [1,2], [-1,2],[1,-2]]

    end
end
