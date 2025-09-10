--Neovim 0.12 Nightly Configuration--

-- Themes
require("themes.kanagawa")

------------ Config --------------
require("config.theme")
require("config.options")
require("config.keymaps")

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

-- mini
require("plugins.mini-statusline")

-- Powershell if Windows --
if vim.fn.has("win32") == 1 then
	require("config.powershell")
end
