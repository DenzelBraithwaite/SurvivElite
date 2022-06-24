class SurvivorController < ParentController
  def initialize(player, repo, view)
    @player = player
    @repo = repo
    @view = view
  end

  # Starts game
  def run
    p @player
      sleep(1)
    @running = true
    clear
    @view.intro(@player)
    while @running
      puts "running"
      sleep(1)
    end
  end

  # Prevents health from going below 0
  def prevent_negative_health(survivor)
    survivor.health = 0 if survivor.health.negative?
  end
end
