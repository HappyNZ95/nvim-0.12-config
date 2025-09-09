if vim.fn.has("win32") == 1 then
	require("config.powershell")
end

-- LSP --lsp
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"pyright",
		"omnisharp", --c_sharp
	},
})

-- Treesitter --
require("plugins.treesitter")

-- Formatting & completion--
require("plugins.conform")
require("plugins.blink-cmp")

-- Config
require("config.options")
require("config.keymaps")

-- Appearance & Themes
require("plugins.themes.kanagawa")
require("config.theme")

require("plugins.mini-statusline")

----------- Plugins ------------

-- Navigation --
require("plugins.oil")
require("plugins.telescope")
--require("plugins.fzf-lua")
