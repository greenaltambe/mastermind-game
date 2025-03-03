class Player
  attr_accessor :name

  def guess
    guess = []
    colors = Color.colors
    colors.each_with_index do |(color, emoji), index|
      puts "#{index + 1}. #{color.to_s.ljust(8)} #{emoji}"
    end
    puts 'Enter your guess'

    4.times do
      print 'Guess>'
      input = gets.chomp
      guess.append(colors.to_a[input.to_i - 1][0])
    end
    guess
  end
end
