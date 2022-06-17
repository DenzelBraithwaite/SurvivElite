require_relative '../models/survivor'

class SurvivorRepo
  attr_reader :survivors

  def initialize
    # List of available survivors
    @survivors = [
      @survivor = Survivor.new
    ]
  end
end
