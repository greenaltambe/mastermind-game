# frozen_string_literal: true

require_relative 'board'
require_relative 'player'
require_relative 'computer'
require_relative 'color'

class Game
  def initialize
    @board = Board.new
    @computer = Computer.new
    @player = Player.new
  end

  def play
    @board.print_board
    @computer.color_code
  end
end
