class BackpackController < ParentController
  def initialize(repo, view)
    super(player)
    @repo = repo
    @view = view
  end
end
