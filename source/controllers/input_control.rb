# Input control

class InputParser
  def self.test(input)
    case input
      when "1"
        Controller.init_game
      when "2"
        Display.high_scores
      when "3"
    #    Display.exit
      when "y"
        Controller.init_game
      when "n"
  #      Display.exit
      else
   #     Display.invalid_input
    end
  end
end