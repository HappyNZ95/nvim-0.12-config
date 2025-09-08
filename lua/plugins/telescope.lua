-- Load Telescope
vim.pack.add({ 
    { src = 'https://github.com/nvim-lua/plenary.nvim'}, -- Required Dependency
    { src = 'https://github.com/nvim-telescope/telescope.nvim'},
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})

local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
}

-- Keybindings
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find files in project directory"})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = "Find by grepping in project directory"})
vim.keymap.set("n", "<leader>fc", function()
  builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find within Neovim configuration" })

vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find Keymaps" })
vim.keymap.set("n", "<leader>fb", builtin.builtin, { desc = "Find Builtin telescope commands" })
vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find current Word under cursor" })
vim.keymap.set("n", "<leader>fW", function()
  builtin.grep_string({ search = vim.fn.expand("<cWORD>") })
end, { desc = "Find current WORD under cursor" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
vim.keymap.set("n", "<leader>fr", builtin.resume, {desc = "Resume last picker"})
vim.keymap.set("n", "<leader>fof", builtin.oldfiles, {desc = "Find Old Files"})
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[,] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
  builtin.current_buffer_fuzzy_find()
end, { desc = "[/] Live grep the current buffer" })
