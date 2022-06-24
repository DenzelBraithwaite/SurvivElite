class Food
  attr_reader :hunger, :thirst, :energy, :health

  def initialize(attributes = {})
    @hunger = attributes[hunger]
    @thirst = attributes[thirst]
    @energy = attributes[energy]
    @health = attributes[health]
  end

  def eat_food(player)
    player.hunger += @hunger
    player.thirst += @thirst
    player.energy += @energy
    player.health += @health
  end
end
