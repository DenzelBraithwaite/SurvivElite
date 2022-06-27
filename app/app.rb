# Gems
require 'colorize'

# Controllers
require_relative 'controllers/parent_controller'
require_relative 'controllers/main_controller'
require_relative 'controllers/survivor_controller'
require_relative 'controllers/backpack_controller'
require_relative 'controllers/food_controller'
# require_relative 'controllers/explore_controller'

# Models
require_relative 'models/survivor'
require_relative 'models/backpack'
require_relative 'models/food'
# require_relative 'models/explore_room'

# Repos
require_relative 'repos/survivor_repo'
require_relative 'repos/backpack_repo'
require_relative 'repos/food_repo'
require_relative 'repos/explore_repo'

# Views
require_relative 'views/main_view'
require_relative 'views/survivor_view'
require_relative 'views/backpack_view'
require_relative 'views/food_view'
# require_relative 'views/explore_view'

# Routers
require_relative 'router'

# Backpack
backpack = Backpack.new
backpack_repo = BackpackRepo.new
backpack_view = BackpackView.new
backpack_controller = BackpackController.new(backpack_repo, backpack_view)

# Survivor
survivor = Survivor.new(backpack)
survivor_repo = SurvivorRepo.new
survivor_view = SurvivorView.new
survivor_controller = SurvivorController.new(survivor_repo, survivor_view)

# parent controller to all other controllers, has many methods to reuse
parent_controller = ParentController.new(survivor)

# Food
food_repo = FoodRepo.new
food_view = FoodView.new
food_controller = FoodController.new(food_repo, food_view)

# Explore
# explore_repo = ExploreRepo.new
# explore_view = ExploreView.new
# explore_controller = ExploreController.new(explore_repo, explore_view)

# Main menu
main_view = MainView.new
main_controller = MainController.new(main_view)

router = Router.new(survivor, parent_controller, main_controller, backpack_controller, survivor_controller, food_controller)
router.run
