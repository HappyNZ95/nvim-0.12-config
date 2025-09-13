--Neovim 0.12 Nightly Configuration--
-- Themes
require("themes.dynamictheme")

------------ Config --------------
require("config.options")
require("config.keymaps")
require("config.helpers")

------------ Plugins ---------------

-- LSP --
require("plugins.lsp")

-- Treesitter --
require("plugins.treesitter")

-- Formatting & completion--
require("plugins.conform")
require("plugins.blink-cmp")

-- Navigation --
require("plugins.oil")
require("plugins.project-nvim")
require("plugins.telescope")
--require("plugins.fzf-lua")
require("plugins.alpha")

-- mini
require("plugins.mini-statusline")

-- Windows 11 --
if vim.fn.has("win32") == 1 then
	require("config.powershell")
	require("plugins.themes.kanagawa") -- explicitly define theme instead of dynamically changing based on Omarchy theme
end
