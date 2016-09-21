require_relative 'piece'

class Pawn
  def symbol
    @color == :white ? ♙ : ♟
  end

  def at_start_row?
  end

  def forward_dir
  end

  def forward_steps
  end

  def side_attacks
    #opponent diaognally in front 
  end

#if pawn has not moved before, it can move forward 2 steps
#Otherwise, forward 1 step
#If opponent direct diagonally in front of it, it can kill that piece and move there
end
