class Color
  @colors = {
    red: '🔴',
    green: '🟢',
    blue: '🔵',
    yellow: '🟡',
    orange: '🟠',
    purple: '🟣'
  }

  def self.random_color
    @colors.keys.sample
  end

  def self.color(text)
    @colors[text] = random_color if @colors[text].nil?
    @colors[text]
  end
end
