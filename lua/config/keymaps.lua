vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

-- Map <leader> fp to open projects
vim.keymap.set("n", "<leader>fp", ":ProjectFzf<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>|", ":vsplit<CR>")

--open scratchpad terminal--
vim.keymap.set("n", "<leader><Tab>", function()
	-- Open a horizontal terminal height 15
	vim.cmd("15split | terminal")
	--Enter insert mode automatically
	vim.cmd("startinsert")
end, { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
