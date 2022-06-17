require_relative '../models/food'

class FoodRepo
  attr_accessor :food

  def initialize(attributes = {})
    # List of available foods
    @food = [
      @insect = Food.new(
        hunger: 2,
        thirst: -1,
        energy: 2,
        health: 0
      ),
      @small_animal = Food.new(
        hunger: 5,
        thirst: 3,
        energy: 5,
        health: 2
      ),
      @big_animal = Food.new(
        hunger: 10,
        thirst: 5,
        energy: 10,
        health: 3
      ),
      @water = Food.new(
        hunger: 2,
        thirst: 10,
        energy: 5,
        health: 2
      ),
      @fish = Food.new(
        hunger: 5,
        thirst: 5,
        energy: 5,
        health: 3
      ),
    ]
  end
end
