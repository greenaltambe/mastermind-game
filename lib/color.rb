class Color
  @colors = {
    red: '🔴',
    green: '🟢',
    blue: '🔵',
    yellow: '🟡',
    orange: '🟠',
    purple: '🟣'
  }

  def self.colors
    @colors.each_with_index do |(key, value), index|
      puts "#{index + 1}. #{key.to_s.ljust(10)}: #{value}"
    end
  end

  def self.random_color
    @colors.keys.sample
  end

  def self.color(text)
    @colors[text] = random_color if @colors[text].nil?
    @colors[text]
  end
end
