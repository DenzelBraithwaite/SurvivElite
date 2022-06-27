class Backpack
  attr_reader :max_inventory
  attr_accessor :inventory

  def initialize
    max_inventory = 10
    inventory = []
  end

  def upgrade_backpack
    max_inventory += 10
  end
end
