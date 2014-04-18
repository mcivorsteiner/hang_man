require_relative '../models/game'
require_relative 'screen_utils'

class Controller
  def initialize
    @used_words = []
  end

  def run
    Display.intro
    Display.menu
    input = gets.chomp
    case input
      when 1
        Controller.start_game
      when 2
        Display.highscores
      when 3
        Display.exit
    end
  end

  def self.start_game
    Game.new(get_word)
    until Game.solved? || Game.false_guesses > 6
      Screen.clear_screen!
      Screen.move_to_home!
      Display.send("hangman_#{what_hangman?}")
      Display.guess(Game.current_word_status)
      Display.guessed_letters(Game.guessed_letters)
      Display.guess_input
      Game.check_letter(gets.chomp) ? Display.correct : Display.incorrect
    end
    Game.solved? ? Display.win : Display.lose
  end

  def what_hangman?
    Game.false_guesses + 1
  end

  def get_word
    word = Word.all.sample
    while @used_words.include?(word)
      word = Word.all.sample
    end
    @used_words << word
    word
  end
end

