class Backpack
  attr_reader :max_inventory, :name
  attr_accessor :weapons, :food

  def initialize
    name = 'Simple backpack'
    max_inventory = 10
    weapons = []
    food = []
  end

  def upgrade_backpack
    max_inventory += 10
  end
end
