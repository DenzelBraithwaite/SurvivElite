# Gems
require 'colorize'

# Controllers
require_relative 'controllers/parent_controller'
require_relative 'controllers/main_controller'
require_relative 'controllers/survivor_controller'
require_relative 'controllers/backpack_controller'
require_relative 'controllers/food_controller'
require_relative 'controllers/day_controller'
# require_relative 'controllers/explore_controller'

# Models
require_relative 'models/survivor'
require_relative 'models/backpack'
require_relative 'models/food'
require_relative 'models/day'
# require_relative 'models/explore_room'

# Repos
require_relative 'repos/survivor_repo'
require_relative 'repos/backpack_repo'
require_relative 'repos/food_repo'
require_relative 'repos/explore_repo'

# Views
require_relative 'views/parent_view'
require_relative 'views/main_view'
require_relative 'views/survivor_view'
require_relative 'views/backpack_view'
require_relative 'views/food_view'
require_relative 'views/day_view'
# require_relative 'views/explore_view'

# Routers
require_relative 'router'

# Initializes a player with a backpack, this needs to be declared first.
survivor = Survivor.new(Backpack.new)

# Backpack
backpack_repo = BackpackRepo.new
backpack_view = BackpackView.new
backpack_controller = BackpackController.new(survivor, backpack_view, backpack_repo)

# Survivor
survivor_repo = SurvivorRepo.new
survivor_view = SurvivorView.new
survivor_controller = SurvivorController.new(survivor, survivor_view, survivor_repo)

# Food
food_repo = FoodRepo.new
food_view = FoodView.new
food_controller = FoodController.new(survivor, food_view, food_repo)

# This handles the logic for each 'day' the player has survived. Each day the player can perform a number of actions.
day = Day.new
day_view = DayView.new
day_controller = DayController.new(survivor, day_view, day)

# Explore
# explore_repo = ExploreRepo.new
# explore_view = ExploreView.new
# explore_controller = ExploreController.new(survivor, explore_repo, explore_view)

# Main menu
main_view = MainView.new
main_controller = MainController.new(survivor, main_view)

router = Router.new(main_controller, backpack_controller, survivor_controller, food_controller, day_controller)
router.run
