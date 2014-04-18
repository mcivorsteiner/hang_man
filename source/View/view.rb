require 'paint'
require_relative 'images'

class Display
	def self.intro
		Display.clear_screen!
		Display.move_to_home!
		print ""
		Messages.welcome
	end

	def self.move_to_home!
 	 print "\e[H"
	end

	def self.clear_screen!
	  print "\e[2J"
	end

  def self.guess_input
    puts "Enter your next letter guess!"
  end

	def self.menu
    Display.clear_screen!
    Display.move_to_home!
    Screens.menu_screen
	end

  def self.high_scores
    Screens.highscores_screen
  end

  def self.scores(num,name,score)
    print Paint["\n| #{num.to_s.ljust(10)}  |     #{name.ljust(10)}            |    #{score.to_s.ljust(10)} |", "gold", :bright, :bold]
  end

  def self.scores_last(num,name,score)
    print Paint["\n| #{num.to_s.ljust(10)}  |     #{name.ljust(10)}            |    #{score.to_s.ljust(10)} |", "gold", :bright, :bold, :underline]
    puts
  end

	def self.guess(string)
		puts "\n\n" + string +"\n\n"
	end

	def self.guessed_letters(array)
		puts "Guessed letters:\n"
		puts "#{array.join " "}\n\n"
	end

  def self.remaining_guesses(remaining_guesses)
    puts "\nRemaining Guesses: #{remaining_guesses}\n\n"
  end

	def self.correct#(integer)
    print "\nGood guess!\n" #{}That letter appears #{integer} times."
		# print "Good guess! That letter appears #{integer} times."
    sleep(2)
	end

	def self.incorrect
		print "\nBad guess. That letter is not a part of this word. Try again!\n"
    sleep(2)
	end

	def self.win
		Display.clear_screen!
    Display.move_to_home!
    Messages.winner
	end

	def self.lose
    Display.move_to_home!
    Display.clear_screen!
    Messages.loser
    print Paint["        Would you like to try again?         \n", :white, :bold, :bright]
    print "\n" * 3
    print Paint["---------------------------------------------\n", :white, :bold, :bright]
    print Paint["        Enter y for Yes, n for No            \n", :white, :bold, :bright, :blink]
    print Paint["---------------------------------------------\n", :white, :bold, :bright]
    Display.hangman_6
    print "\n" * 8
	end

	def self.hangman_0
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.empty_noose
	end

	def self.hangman_1
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.head_only
	end

	def self.hangman_2
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.head_and_torso
	end

	def self.hangman_3
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.head_and_one_arm
  end

	def self.hangman_4
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.head_and_arms
	end

	def self.hangman_5
    Display.clear_screen!
    Display.move_to_home!
    HangedMen.torso_and_leg
	end

	def self.hangman_6
    # Display.move_to_home!
    # Display.clear_screen!
    HangedMen.dead_guy
	end
end
