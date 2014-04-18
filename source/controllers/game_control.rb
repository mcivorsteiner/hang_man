# Game control
require_relative 'controller'

class GameControl
  def initialize(game)
    @game = game
  end

  def run_game
    until @game.solved? || @game.false_guesses >= 6
      Display.send("hangman_#{@game.false_guesses}")
      Display.guess(@game.current_word_status)
      Display.guessed_letters(@game.guessed_letters)
      Display.remaining_guesses(6 - @game.false_guesses)
      # Display.guess_input
      puts "ENTER YOUR NEXT GUESS: "
      @game.check_letter(gets.chomp.downcase) ? Display.correct : Display.incorrect
    end
    @game.solved? ? Display.win : Display.lose
    end_game
  end

  def end_game
    InputParser.test(gets.chomp)
  end

end

class GameFactory

  def self.new_game
    Game.new(next_word)
  end

  private

  def self.next_word
  end
end