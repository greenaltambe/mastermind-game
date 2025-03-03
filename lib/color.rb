class Color
  @colors = {
    red: '🔴',
    green: '🟢',
    blue: '🔵',
    yellow: '🟡',
    orange: '🟠',
    purple: '🟣'
  }

  @hint_colors = {
    red: '🔴',
    white: '⚪',
    black: '⚫'
  }

  def self.colors
    @colors
  end

  def self.random_color
    @colors.keys.sample
  end

  def self.color(text)
    @colors[text] = random_color if @colors[text].nil?
    @colors[text]
  end

  def self.hint_colors(text)
    @hint_colors[text]
  end
end
