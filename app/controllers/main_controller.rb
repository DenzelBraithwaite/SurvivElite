class MainController < ParentController
  def initialize(view)
    @survivor = @@survivor
    @view = view
  end
end
