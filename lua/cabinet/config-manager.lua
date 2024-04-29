local Path = require("plenary.path")

local M = {}
M.config_directory = vim.fn.stdpath("data") .. "/cabinet"



function M.setup(options)
    if options and options.config_directory then
        M.config_directory = options.config_directory
    end

    local config_dir = Path:new(M.config_directory)
    if not config_dir:exists() then
        config_dir:mkdir({ parents = true })
    end
end


function M.save(file_name, data)
    local config_file = Path:new(M.config_directory, file_name .. ".json")
    config_file:write(vim.json.encode(data), "w")
end


function M.load(file_name)
    local config_file = Path:new(M.config_directory, file_name .. ".json")
    if not config_file:exists() then
        return nil
    end
    return vim.json.decode(config_file:read())
end



return M

