# High Scores

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
    return "3"
  end

end