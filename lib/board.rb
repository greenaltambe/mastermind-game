class Board
  attr_accessor :board, :hints

  TURNS_COUNT = 12
  CODE_SIZE = 4

  def initialize
    @board = Array.new(TURNS_COUNT) { Array.new(CODE_SIZE) }
    @hints = Array.new(TURNS_COUNT) { Array.new(CODE_SIZE) }
  end

  def print_board
    @board.each_with_index do |row, index|
      puts "0#{index + 1} #{row.join(' ')} | #{hints[index].join(' ')}" if index + 1 < 10
      puts "#{index + 1} #{row.join(' ')} | #{hints[index].join(' ')}" if index + 1 >= 10
    end
  end
end
