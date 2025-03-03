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
    loop do
      @board.print_board
      player_guess = @player.guess
      hint = @computer.hints(player_guess)
      @board.add_row(player_guess, hint) # Not implemented
      break if game_over?(player_guess)
    end
    @board.print_board
  end

  def game_over?(player_guess)
    return true if @board.turn == 12 || @computer.check_guess(player_guess)

    false
  end
end
