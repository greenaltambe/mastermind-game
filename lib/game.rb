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
    print 'Enter your name: '
    @player.name = gets.chomp
  end

  def play
    @board.print_board
    @computer.color_code
    player_turn
  end

  def player_turn
    until game_over?
      @board.print_board
      player_guess = @player.guess
      @computer.check_guess(player_guess) # Not implemented
      hint = @computer.hints(player_guess) # Not implemented
      @board.add_row(player_guess, hint) # Not implemented
    end
  end
  def game_over?
    false
  end
end
