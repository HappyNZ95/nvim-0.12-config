vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/ahmedkhalf/project.nvim" },
})

require("nvim-tree").setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})

require("project_nvim").setup()
