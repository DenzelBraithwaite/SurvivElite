class MainView < ParentView
  def intro(player)
    puts "Welcome to SurvivElite #{player.name}, we wish you the best of luck!"
    sleep(2)
    puts "There aren't many rules to remember, although we do recommend one particular tactic"
    sleep(2)
    puts "It's called..."
    sleep(2)
    puts "-->Don't die<--"
    puts "Good luck!"
  end

  def tutorial
    too_bad = "Too bad... there isn't a tutorial. Good luck though!"
    puts "Would you like read the tutorial before diving in? Or would you perhaps rather 'wing it'."
    puts "(Y/N) Type 'y' for yes and 'n' for no."
    choice = gets.chomp
    if choice == 'y'.downcase
      puts too_bad
    else
      puts "You might be a veteran gamer but I'd recommend at least skimming the instructions to have a general idea of what to do."
      puts "(Y/N) Type 'y' for yes and 'n' for no."
      choice = gets.chomp
      if choice == 'y'.downcase
        puts too_bad
      else
        puts "Okay hotshot, have it your way! The game will be starting soon and you're gonna have no idea what to do."
        puts "But hey, I'm nice... In the spirit of being a fellow brave gamer who likes to jump in head first, how about this."
        puts "I will give you a bonus of #{'1000G'.yellow} if you listen to the tutorial. This is only offered to a select few."
        puts "So, what do you say?"
        puts "(Y/N) Type 'y' for yes and 'n' for no."
        choice = gets.chomp
        if choice == 'y'.downcase
          puts too_bad
          # Add an actual bonus of 1000G, which will be pretty useless. Maybe even makes the player more thirsty.
        else
          puts "Well too bad, here it comes. FRESH out the oven just for you."
          puts "Welcome to SurvivElite, a place that's all about surviving."
          puts "You will need to watch things like your hunger, thirst, energy, health and more!"
          puts "That's all. Was that so bad? You know, a little bit of patience can go a long way."
          puts "Also now I'm taking a sip of your water before you start."
          puts "Enjoy!"
        end
      end
    end
  end

  def starting_items
    puts "Pick your starting items..."
    sleep(1)
    puts "1 - apple"
    sleep(0.25)
    puts "2 - knife"
    sleep(0.25)
    puts "3 - water"
  end
end
