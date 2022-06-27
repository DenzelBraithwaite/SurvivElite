# Defines a survivor and their stats in battle
class Survivor
  attr_accessor :name, :health, :strength, :accuracy, :hunger, :thirst, :energy, :backpack

  def initialize(backpack)
    # survivor's name
    @name = "Survivor ##{rand(200..1000)}"
    # How many hitpoints the survivor has until knocked out.
    @health = 100
    # How much damage does the survivor do.
    @strength = 5
    # Chance of hitting or missing the target.
    @accuracy = 95
    # Hunger stats, 0 = death
    @hunger = 100
    # Thirst stats, 0 = death
    @thirst = 100
    # energy stats, 0 = fall asleep
    @energy = 100
    # Holds all inventory items
    @backpack = backpack
  end

  # Returns true if the survivor is alive
  def alive?
    @health.positive?
  end

  # Returns true if the survivor is dead
  def dead?
    @health.zero?
  end

  # Randomizes strength again, overwritten by child class methods.
  def refresh_strength; end

  # Determines if survivor is a certain role
  def check_survivor_role(role)
    instance_of?(role)
  end

  # Determines if the hit lands
  def hit_landed?
    miss_chance = rand(0..100)
    @accuracy >= miss_chance
  end
end
