class SurvivorView
  def intro(player)
    puts "Welcome to SurvivElite #{player.name}, we wish you the best of luck!"
    sleep(1.25)
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

  def exploring_message
    puts "You keep exploring..."
  end
end
