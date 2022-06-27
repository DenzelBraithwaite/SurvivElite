class Router
  def initialize(survivor, parent_c, main_c, backpack_c, survivor_c, food_c)
    @survivor = survivor
    @parent_controller = parent_c
    @main_controller = main_c
    @backpack_controller = backpack_c
    @survivor_controller = survivor_c
    @food_controller = food_c
  end

  def run
    @survivor_controller.run
  end
end
