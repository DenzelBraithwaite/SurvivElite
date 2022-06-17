require 'colorize'

require_relative 'router'
require_relative 'controllers/parent_controller'
require_relative 'controllers/survivor_controller'
require_relative 'controllers/menu_controller'
require_relative 'repos/survivor_repo'
require_relative 'views/survivor_view'

# Survivor repository
survivor_repo = SurvivorRepo.new

# Player (survivor)
player = survivor_repo.survivors.first

# Survivor view
survivor_view = SurvivorView.new

# parent controller
parent_controller = ParentController.new(player)

# Survivor controller
survivor_controller = SurvivorController.new(survivor_repo, survivor_view)

# Menu controller
menu_controller = MenuController.new(survivor_repo, survivor_view)

# Main router
router = Router.new(survivor_controller)

router.run
