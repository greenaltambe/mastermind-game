class Computer
  def initialize
    @code = Array.new(4) { Color.random_color }
  end

  def color_code
    @code.each { |color| print Color.color(color).concat(' ') }
  end
end
