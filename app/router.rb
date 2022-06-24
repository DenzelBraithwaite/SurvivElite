class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    p @player
    sleep(1)
    @controller.run
  end
end
