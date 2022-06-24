class FoodController < ParentController
  def initialize(player, repo, view)
    @player = player
    @repo = repo
    @view = view
  end
end
