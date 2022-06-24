# Gems
require 'colorize'

# Controllers
require_relative 'controllers/parent_controller'
require_relative 'controllers/main_controller'
require_relative 'controllers/survivor_controller'
require_relative 'controllers/food_controller'
# require_relative 'controllers/explore_controller'

# Models
require_relative 'models/survivor'
require_relative 'models/food'
# require_relative 'models/explore_room'

# Repos
require_relative 'repos/survivor_repo'
require_relative 'repos/food_repo'
require_relative 'repos/explore_repo'

# Views
require_relative 'views/main_view'
require_relative 'views/survivor_view'
require_relative 'views/food_view'
# require_relative 'views/explore_view'

# Routers
require_relative 'router'

# Survivor
survivor_repo = SurvivorRepo.new
player = survivor_repo.survivors.first
survivor_view = SurvivorView.new
survivor_controller = SurvivorController.new(player, survivor_repo, survivor_view)

# Food
food_repo = FoodRepo.new
food_view = FoodView.new
food_controller = FoodController.new(player, food_repo, food_view)

# Explore
# explore_repo = ExploreRepo.new
# explore_view = ExploreView.new
# explore_controller = ExploreController.new(player, explore_view)

# parent controller to all other controllers, has many methods to reuse
parent_controller = ParentController.new

# Main menu
main_controller = MainController.new(survivor_repo, survivor_view)
main_view = MainView.new

router = Router.new(survivor_controller)
router.run
