class BackpackController < ParentController
  def initialize(repo, view)
    @survivor = @@survivor
    @repo = repo
    @view = view
  end
end
