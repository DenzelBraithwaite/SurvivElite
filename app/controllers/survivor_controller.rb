class SurvivorController < ParentController
  def initialize(repo, view)
    @survivor = @@survivor
    @repo = repo
    @view = view
  end

  # Starts game
  def run
    @running = true
    clear
    @view.intro(@survivor)
    @view.starting_items
    item = gets.chomp.to_i
    while @running
      continue_prompt
    end
  end

  # Prevents health from going below 0
  def prevent_negative_health(survivor)
    survivor.health = 0 if survivor.health.negative?
  end
end
