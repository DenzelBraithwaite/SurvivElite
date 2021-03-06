class ParentView
  # Simple blinking prompt, continues when user enters anything
  def continue_prompt
    puts "π―ππΎππ πΎπππΎπ ππ πΌπππππππΎ".light_black.blink
      gets.chomp
  end

 # Slowly types dialoggue with optional continue prompt
  def slow_dialogue(text, delay = 0.030, continue = true)
    slow_text = text.chars

    slow_text.each do |char|
      if char == "," || char == "." || char == "!"
        print char
        sleep(0.45)
      else
        print char
        sleep(delay)
      end
    end

    2.times {line(0.5)}
    if continue == true
      continue_prompt
    end
  end

  # Clear terminal screen regardless of OS
  def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
  end

  # Simple loading screen, finishes with 100% in green.
  def loading
    print "Loading"
    100.times do
      print "."
      sleep(0.03)
    end
    print "100%!".green
    sleep(1.5)
    clear
  end

  # Longer loading screen with optional delay
  def long_loading(delay = 4)
    print "Loading"
    40.times do
      print "."
      sleep(0.05)
    end
    sleep(delay.to_f)
    60.times do
      print "."
      sleep(0.02)
    end
    print "100%!".green
    sleep(1.5)
    clear
  end

  # Faster loading screen
  def fast_loading
    print "Loading"
    100.times do
      print "."
      sleep(0.01)
    end
    print "100%!".green
    sleep(1)
    clear
  end

  # Adds line, accepts 2 arguments; amount of lines and delay.
  def line(time = 0, lines = 1)
    lines.times { puts "" }
    sleep(time.to_f)
  end
end
