require_relative '../models/game'
require_relative 'screen_utils'
require_relative '../View/view'

class Controller
  def initialize
    @used_words = []
  end

  def run
    Display.intro
    Display.menu
    input = gets.chomp
    if input == ""
      start_game
    end


  end

  def start_game
    # Game.new(get_word)
    game = Game.new("hello")
    until game.solved? || game.false_guesses >= 6
      Display.send("hangman_#{game.false_guesses}")
      Display.guess(game.current_word_status)
      Display.guessed_letters(game.guessed_letters)
      Display.remaining_guesses(6 - game.false_guesses)
      # Display.guess_input
      puts "ENTER YOUR NEXT GUESS: "
      game.check_letter(gets.chomp.downcase) ? Display.correct : Display.incorrect
    end
    game.solved? ? Display.win : Display.lose
  end

  def what_hangman?
    game.false_guesses
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

