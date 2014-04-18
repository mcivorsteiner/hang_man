require 'paint'

class Display
	def intro
		clear_screen!
		move_to_home!
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
    sleep(5)
	end

	def move_to_home!
 	 print "\e[H"
	end

	def clear_screen!
	  print "\e[2J"
	end

	def menu
		move_to_home!
		clear_screen!
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

	def guess(string)
		print string
	end

	def guessed_letters(array)
		print "Eliminated letters:"
		print "{array.join " "}"
	end

	def correct(integer)
		print "Good guess! That letter appears #{integer} times."

	end

	def incorrect
		print "Bad guess. That letter is not a part of this word. Try again!"
	end

	def win
		move_to_home!
		clear_screen!
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

	def lose
		move_to_home!
		clear_screen!
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
    print "\n" * 25
	end

	def hangman_0
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

	def hangman_1
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

	def hangman_2
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

	def hangman_3
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

	def hangman_4
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

	def hangman_5
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

	def hangman_6
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

hanged_man = Display.new
hanged_man.intro
hanged_man.menu
# hanged_man.win
# hanged_man.lose
# hanged_man.hangman_0
# hanged_man.hangman_1
# hanged_man.hangman_2
# hanged_man.hangman_3
# hanged_man.hangman_4
# hanged_man.hangman_5
# hanged_man.hangman_6
