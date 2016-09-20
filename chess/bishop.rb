class Bishop < SlidingPiece

    def symbol
      @color == :white ?  ♔ : ♚
    end

    protected

    def move_dirs
      diagonal_dirs
    end
end
