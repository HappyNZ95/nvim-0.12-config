if vim.fn.has("win32") == 1 then
	require("config.powershell")
end

-- LSP --
require("plugins.lsp")

-- Treesitter --
require("plugins.treesitter")

-- Formatting & completion--
require("plugins.conform")
require("plugins.blink-cmp")

-- Appearance & Themes
require("plugins.themes.kanagawa")
require("config.theme")

-- Config
require("config.options")
require("config.keymaps")

require("plugins.mini-statusline")

----------- Plugins ------------

-- Navigation --
require("plugins.oil")
require("plugins.telescope")
--require("plugins.fzf-lua")
