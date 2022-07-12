class DayController < ParentController
  def initialize(survivor, view, day)
    super(survivor, view)
    @day = day
  end

  # Starts game
  def run
    @running = true
    @view.clear
    # @view.starting_items
    # item = gets.chomp.to_i
    while @running
      @view.continue_prompt

    end
  end
end
