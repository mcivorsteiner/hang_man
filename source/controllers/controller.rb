require_relative '../models/game'

class Controller
  def initialize
    @used_words = []
  end

  def run
    Display.intro
    Display.menu
    input = gets.chomp
    if input == "1"
      Controller.start_game
    end
  end

  def self.start_game
    word = Word.all.sample
    game = Game.new(Word.all.sample)

  end

  def get_word

  end
end

