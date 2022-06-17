class SurvivorController < ParentController
  def initialize(repo, view)
    super(@player)
    @repo = repo
    @view = view
  end

  # Starts game
  def run
    @running = true
    clear_screen
    @view.intro
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
