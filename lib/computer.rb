class Computer
  def initialize
    @code = Array.new(4) { Color.random_color }
  end

  def color_code
    @code.each { |color| print Color.color(color).concat(' ') }
    puts
  end

  def check_guess(player_guess)
    player_guess.each_with_index do |guess, index|
      return false if guess != @code[index]
    end
    true
  end

  def hints(player_guess)
    hints = []
    player_guess.each_with_index do |guess, index|
      if @code.include?(guess)
        if player_guess[index] == @code[index]
          hints.append('red')
        else
          hints.append('white')
        end
      else
        hints.append('black')
      end
    end
    hints
  end
end
