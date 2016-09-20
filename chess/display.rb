require 'colorize'
require_relative 'cursor'
require_relative 'board'
# require 'byebug'
class Display

  attr_reader :board

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end


  def render
      # debugger
    @board.grid.each.with_index do |row, x|
      row.each.with_index do |square, y|
        [x,y] == @cursor.cursor_pos ? (print square.to_s.colorize(:red)) : (print square.to_s.colorize(:cyan))
      end.join("")
      puts ""
    end.join("\n")
  end

  def run
    while true
      render
      @cursor.get_input
      system('clear')
    end
  end
end

bored = Board.new
display = Display.new(bored).run
