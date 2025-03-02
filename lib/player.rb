class Player
  attr_accessor :name

  def guess
    guess = []
    Color.colors
    print 'Enter your guess: '

    4.times { guess.append(gets.chomp) }
    guess
  end
end
