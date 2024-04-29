local config_manager = require("cabinet.config-manager")

local M = {}


-- Submodules
M.config_manager = config_manager

-- Setup
M.setup = function(options)
    M.config_manager.setup(options)
end



return M

