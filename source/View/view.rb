require 'paint'

class Display
	def self.intro
		Display.clear_screen!
		Display.move_to_home!
		print ""
		print Paint[
"  _    _      _                            _
 | |  | |    | |                          | |
 | |  | | ___| | ___ ___  _ __ ___   ___  | |_ ___
 | |/\\| |/ _ \\ |/ __/ _ \\| '_ ` _ \\ / _ \\ | __/ _ \\
 \\  /\\  /  __/ | (_| (_) | | | | | |  __/ | || (_) |
  \\/  \\/ \\___|_|\\___\\___/|_| |_| |_|\\___|  \\__\\___/


 ____________  _____   _   _
 |  _  \\ ___ \\/  __ \\ | | | |
 | | | | |_/ /| /  \\/ | |_| | __ _ _ __   __ _ _ __ ___   __ _ _ __
 | | | | ___ \\| |     |  _  |/ _` | '_ \\ / _` | '_ ` _ \\ / _` | '_ \\
 | |/ /| |_/ /| \\__/\\ | | | | (_| | | | | (_| | | | | | | (_| | | | |
 |___/ \\____/  \\____/ \\_| |_/\\__,_|_| |_|\\__, |_| |_| |_|\\__,_|_| |_|
                                          __/ |
                                         |___/  \n","#3D0000", :bold, :bright]
		print Paint[
"    ___              _          _   _           _
   / __|_ _ ___ __ _| |_ ___ __| | | |__ _  _  (_)
  | (__| '_/ -_) _` |  _/ -_) _` | | '_ \\ || |  _
   \\___|_| \\___\\__,_|\\__\\___\\__,_| |_.__/\\_, | (_)
                                         |__/ \n",:white, :bold, :bright]
    print Paint[
"      __  __ _ _      _
  ___|  \\/  (_) |_ __| |_
 |___| |\\/| | |  _/ _| ' \\
     |_|  |_|_|\\__\\__|_||_|
                           \n", :white, :bold, :bright]
    print Paint[
"      _  ___
  ___| |/ (_)
 |___| ' <| |
     |_|\\_\\_|
             \n", :white, :bold, :bright]
    print Paint[
"      __  __
  ___|  \\/  |__ _ __ _ __ _ _  _
 |___| |\\/| / _` / _` / _` | || |
     |_|  |_\\__,_\]__, \\__, |\\_, |
                 |___/|___/ |__/ \n", :white, :bold, :bright]
    print Paint[
"       ___          __  __
  ___ / __|___ ___ / _|/ _|
 |___| (_ / -_) _ \\  _|  _|
      \\___\\___\\___/_| |_|
                           \n", :white, :bold, :bright]
    sleep(3)
	end

	def self.move_to_home!
 	 print "\e[H"
	end

	def self.clear_screen!
	  print "\e[2J"
	end

  # def self.flush!
  #   $stdout.flush
  # end

	def self.menu
    Display.clear_screen!
    Display.move_to_home!
		print "\n" * 3
		print Paint[
" ____________  _____   _   _
 |  _  \\ ___ \\/  __ \\ | | | |
 | | | | |_/ /| /  \\/ | |_| | __ _ _ __   __ _ _ __ ___   __ _ _ __
 | | | | ___ \\| |     |  _  |/ _` | '_ \\ / _` | '_ ` _ \\ / _` | '_ \\
 | |/ /| |_/ /| \\__/\\ | | | | (_| | | | | (_| | | | | | | (_| | | | |
 |___/ \\____/  \\____/ \\_| |_/\\__,_|_| |_|\\__, |_| |_| |_|\\__,_|_| |_|
                                          __/ |
                                         |___/  \n","#3D0000", :bold, :bright]
    print "\n"
		print  Paint["      _________     \n","#663300", :bold]
    print  Paint["     |         |    \n","#663300", :bold]
    print  Paint["     |         |    \n","#663300", :bold]
    print  Paint["     |        (_)   \n","#663300", :bold]
    print  Paint["     |              \n","#663300", :bold]
		print  Paint["     |              \n","#663300", :bold]
    print  Paint["     |              \n","#663300", :bold]
    print  Paint["     |              \n","#663300", :bold]
    print  Paint["     |              \n","#663300", :bold]
		print  Paint[" ____|_____________ \n","#663300", :bold]
		print  Paint["|||||_||||||||||||||\n","#663300", :bold]
		print  Paint["||||||||||||||||||||\n","#663300", :bold,:underline]
    print "\n" * 3
    print Paint["            -----------------------------------------\n", :white]
    print Paint["                  Press enter to begin a new game\n", :white, :blink, :bold]
    print Paint["            -----------------------------------------\n", :white]
    print "\n" * 3
	end

	def center_item(item, spaces)
    left_spaces = (spaces - item.to_s.length) / 2
    block = " " * left_spaces
    block << item
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
		print "\n" * 6
		print Paint[
"       _____                _       _       _     _
      / ____|              | |     (_)     | |   | |
     | |  __ _ __ ___  __ _| |_     _  ___ | |__ | |
     | | |_ | '__/ _ \\\/ _` | __|   | |/ _ \\| '_ \\| |
     | |__| | | |  __/ (_| | |_    | | (_) | |_) |_|
      \\_____|_|  \\___|\\__,_|\\__|   | |\\___/|_.__/(_)
                                  _/ |
                                 |__/                \n", :white]
    print "\n" * 10
    print Paint["      Would you like to move on to the next level? (y/n) \n", :white]
    print "\n" * 15
	end

	def self.lose
    Display.move_to_home!
    Display.clear_screen!
		print "\n" * 6
		print Paint[
"       _____                         ____
      / ____|                       / __ \\
     | |  __  __ _ _ __ ___   ___  | |  | |_   _____ _ __
     | | |_ |/ _` | '_ ` _ \\ / _ \\ | |  | \\ \\ / / _ \\ '__|
     | |__| | (_| | | | | | |  __/ | |__| |\\ V /  __/ |
      \\_____|\\__,_|_| |_| |_|\\___|  \\____/  \\_/ \\___|_|

                                                      \n", "#3D0000"]
    print "\n" * 4
    print Paint["          Would you like to play again? (y/n) \n", :white]
    print "\n" * 2
    Display.hangman_6
    print "\n" * 8
	end

	def self.hangman_0
    Display.clear_screen!
    Display.move_to_home!
    print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         0    \n","#663300"]
    print  Paint["     |              \n","#663300"]
		print  Paint["     |              \n","#663300"]
    print  Paint["     |              \n","#663300"]
    print  Paint["     |              \n","#663300"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_1
    Display.clear_screen!
    Display.move_to_home!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["         "             ,"00CC00"]
    print  Paint[" "										 ,"00CC00"]
    print  Paint["    \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint[" "									 	 ,"00CC00"]
		print	 Paint["      \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["          "            ,"#0066FF"]
    print  Paint["    \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        "              ,"0066FF"]
    print  Paint["    \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_2
    Display.clear_screen!
    Display.move_to_home!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["         "             ,"00CC00"]
    print  Paint["|"										 ,"00CC00"]
    print  Paint["    \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint[" "									 	 ,"00CC00"]
		print	 Paint[" |    \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["          "            ,"#0066FF"]
    print  Paint["    \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        "              ,"0066FF"]
    print  Paint["    \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_3
    Display.clear_screen!
    Display.move_to_home!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["        /"             ,"00CC00"]
    print  Paint["|"										 ,"00CC00"]
    print  Paint["    \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint["/"									 	 ,"00CC00"]
		print	 Paint[" |    \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["          "            ,"#0066FF"]
    print  Paint["    \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        "              ,"0066FF"]
    print  Paint["    \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_4
    Display.clear_screen!
    Display.move_to_home!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["        /"             ,"00CC00"]
    print  Paint["|"										 ,"00CC00"]
    print  Paint["\\  \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint["/"									 	 ,"00CC00"]
		print	 Paint[" | \\ \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["          "            ,"#0066FF"]
    print  Paint["    \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        "              ,"0066FF"]
    print  Paint["    \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_5
    Display.clear_screen!
    Display.move_to_home!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["        /"             ,"00CC00"]
    print  Paint["|"										 ,"00CC00"]
    print  Paint["\\  \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint["/"									 	 ,"00CC00"]
		print	 Paint[" | \\ \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        / "            ,"#0066FF"]
    print  Paint["    \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["       /"              ,"0066FF"]
    print  Paint["      \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end

	def self.hangman_6
    # Display.move_to_home!
    # Display.clear_screen!
		print "\n"
		print  Paint["      _________     \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |         |    \n","#663300"]
    print  Paint["     |" 							 ,"#663300"]
    print  Paint["         @    \n"      ,"#FF9999"]
    print  Paint["     |"                ,"#663300"]
    print  Paint["        /"             ,"00CC00"]
    print  Paint["|"										 ,"00CC00"]
    print  Paint["\\  \n"                ,"00CC00"]
		print  Paint["     |       "				 ,"#663300"]
		print  Paint["/"									 	 ,"00CC00"]
		print	 Paint[" | \\ \n"              ,"00CC00"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["        / "            ,"#0066FF"]
    print  Paint["\\  \n"                ,"0066FF"]
    print  Paint["     |"								 ,"#663300"]
    print  Paint["       /"              ,"0066FF"]
    print  Paint["   \\ \n"              ,"0066FF"]
    print  Paint["     |              \n","#663300"]
		print  Paint[" ____|_____________ \n","#663300"]
		print  Paint["|                  |\n","#663300"]
		print  Paint["|__________________|\n","#663300"]
	end
end

# hanged_man = Display.new
# hanged_man.intro
# hanged_man.menu
# hanged_man.win
# hanged_man.lose
# hanged_man.hangman_0
# hanged_man.hangman_1
# hanged_man.hangman_2
# hanged_man.hangman_3
# hanged_man.hangman_4
# hanged_man.hangman_5
# hanged_man.hangman_6
