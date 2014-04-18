require_relative '../models/game'
require_relative 'screen_utils'
require_relative '../View/view'
require_relative '../db/config'
require_relative 'game_control'
require_relative 'input_control'
require_relative '../models/used_words'

class Controller
  def initialize
    @used_words
  def run
    Display.intro
    Display.menu
    send(InputParser.test(gets.chomp))
  end

  def self.init_game
    GameControl.new(Game.new(Controller.get_word)).run_game
  end

  def what_hangman?
    game.false_guesses
  end

  def self.get_word
    word = Word.all.sample.word
    while UsedWords.list.include?(word)
      word = Word.all.sample.word
    end
    UsedWords.add_words(word)
    word
  end

end

