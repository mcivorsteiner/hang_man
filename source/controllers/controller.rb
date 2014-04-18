require_relative '../models/game'
require_relative 'screen_utils'
require_relative '../View/view'
require_relative '../db/config'
require_relative 'game_control'
require_relative 'input_control'
require_relative '../models/used_words'
require_relative 'game_factory'

class Controller
  def run
    Display.intro
    Display.menu
    send(InputParser.test(gets.chomp))
  end

  def self.init_game
    GameControl.new(GameFactory.new_game).run_game
  end

end

class HighScores
  def self.display
    Screen.clear_screen!
    Screen.move_to_home!
    Display.high_scores
    scores = HighScore.all
   # scores.sort_by {|a,b| a.score <=> b.score}
    last_score = scores.to_a.pop
    scores.each_with_index do |score,index|
      Display.scores(index + 1,score.name, score.score)
    end
    Display.scores_last(scores.length + 1,last_score.name,last_score.score)
  end
end
