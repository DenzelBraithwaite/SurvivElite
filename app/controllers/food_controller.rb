class FoodController < ParentController
  def initialize(survivor, view, repo)
    super(survivor, view)
    @repo = repo
  end
end
