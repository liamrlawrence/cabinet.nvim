
# cabinet.nvim

cabinet.nvim is a lightweight Neovim plugin written in Lua, designed to manage and handle configuration files seamlessly. It simplifies the process of saving and loading configuration states within Neovim, making it easier to maintain a dynamic and flexible development environment.

## Features
- Load Configuration: Effortlessly load settings from a specified configuration file.
- Save Configuration: Save current settings back to configuration files with ease.
- Customizable Path: Set and use custom paths for configuration files based on user preference.
- Integration: Easily integrate with other Neovim setups and plugins.

## Requirements

- Neovim 0.5.0+
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)

## Installation

[Lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
return {
    "liamrlawrence/cabinet.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        require("cabinet").setup()
    end
}
```


## Usage

After installation, you can use cabinet.nvim to manage your configuration files:

### Loading a Config File

```lua
local config = require("cabinet").config_manager
config.load("configuration.json")
```

### Saving a Config File

```lua
local config = require("cabinet").config_manager
config.save("configuration.json", { setting1 = true, setting2 = false })
```

## Configuration

Customize cabinet.nvim by using the setup function in your Neovim configuration file:

```lua
require("cabinet").setup({
  config_directory = vim.fn.stdpath("data") .. "/cabinet"  -- Default path for configuration files
})
```

## License

cabinet.nvim is released under the MIT License.

