require_relative '../models/game'
require_relative 'screen_utils'
require_relative '../View/view'
require_relative '../db/config'
require_relative 'game_control'
require_relative 'input_control'
require_relative '../models/used_words'
require_relative 'game_factory'
require_relative 'high_scores'

class Controller
  def run
    Display.intro
    Display.menu

    InputParser.test(gets.chomp)
  end

  def self.init_game
    GameControl.new(GameFactory.new_game).run_game
  end

end


