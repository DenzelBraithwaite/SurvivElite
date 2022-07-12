class Router
  def initialize(main_c, backpack_c, survivor_c, food_c, day_c)
    @main_controller = main_c
    @backpack_controller = backpack_c
    @survivor_controller = survivor_c
    @food_controller = food_c
    @day_controller = day_c
    @survivor = @main_controller.survivor
  end

  def run
    @main_controller.view.clear
    @main_controller.view.intro(@survivor)
    @main_controller.view.tutorial
    @main_controller.view.continue_prompt
    @day_controller.run
  end
end
