class Board
  attr_accessor :board, :hints, :turn

  TURNS_COUNT = 12
  CODE_SIZE = 4

  def initialize
    @board = Array.new(TURNS_COUNT) { Array.new(CODE_SIZE) }
    @hints = Array.new(TURNS_COUNT) { Array.new(CODE_SIZE) }
    @turn = 0
  end

  def print_board
    @board.each_with_index do |row, index|
      puts "0#{index + 1} #{row.join(' ')} | #{hints[index].join(' ')}" if index + 1 < 10
      puts "#{index + 1} #{row.join(' ')} | #{hints[index].join(' ')}" if index + 1 >= 10
    end
  end

  def add_row(player_guess, hint)
    @board[@turn] = player_guess
    @hints[@turn] = hint
    @turn += 1
  end
end
