# Screen utils

class Screen
  def self.clear_screen!
    print "\e[2J"
  end

  # Moves cursor to the top left of the terminal
  def self.move_to_home!
    print "\e[H"
  end

  # Flushes the STDOUT buffer.
  # By default STDOUT is only flushed when it encounters a newline (\n) character
  def self.flush!
    $stdout.flush
  end
end