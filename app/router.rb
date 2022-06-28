class Router
  def initialize(main_c, backpack_c, survivor_c, food_c)
    @main_controller = main_c
    @backpack_controller = backpack_c
    @survivor_controller = survivor_c
    @food_controller = food_c
    @survivor = @main_controller.survivor
  end

  def run
    @survivor_controller.run
  end
end
