require_relative '../models/survivor'

class SurvivorRepo
  attr_writer :survivors

  def initialize
    # List of available survivors
    @survivors = []
  end
end
