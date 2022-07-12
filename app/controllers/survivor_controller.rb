class SurvivorController < ParentController
  def initialize(survivor, view, repo)
    super(survivor, view)
    @repo = repo
  end

  # Prevents health from going below 0
  def prevent_negative_health(survivor)
    survivor.health = 0 if survivor.health.negative?
  end
end
