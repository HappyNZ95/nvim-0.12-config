vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.icons' },
    { src = 'https://github.com/ibhagwan/fzf-lua' },
})

require("mini.icons") -- dependency
require("fzf-lua")


-- Keybindings

vim.keymap.set("n", "<leader>ff", ":Fzf files<CR>", {desc = "Find files in project directory"})
vim.keymap.set("n", "<leader>fg", ":Fzf live_grep<CR>", {desc = "Find by grepping in project directory" })

vim.keymap.set("n", "<leader>fc", function()
  require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find within Neovim configuration" })

vim.keymap.set("n", "<leader>fh", ':Fzf helptags<CR>', { desc = "Find Help" })
vim.keymap.set("n", "<leader>fk", ':Fzf keymaps<CR>', { desc = "Find Keymaps" })
vim.keymap.set("n", "<leader>fb", ':Fzf builtin<CR>', { desc = "Find Builtin fzf commands" })
vim.keymap.set("n", "<leader>fw", ':Fzf grep_cword<CR>', { desc = "Find current Word" })
vim.keymap.set("n", "<leader>fW", ':Fzf grep_cWORD<CR>', { desc = "Find current WORD" })
vim.keymap.set("n", "<leader>fd", ':Fzf diagnostics_document<CR>', { desc = "Find Diagnostics" })
vim.keymap.set("n", "<leader>fr", ':Fzf resume<CR>', {desc = "Find Resume"})
vim.keymap.set("n", "<leader>fof", ':Fzf oldfiles<CR>', {desc = "Find Old Files"})
vim.keymap.set("n", "<leader><leader>", ':Fzf buffers<CR>', { desc = "[,] Find existing buffers" })
vim.keymap.set("n", "<leader>/", ':Fzf lgrep_curbuf<CR>', { desc = "[/] Live grep the current buffer" })

