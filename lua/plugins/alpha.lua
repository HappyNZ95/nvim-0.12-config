vim.pack.add({
	{ src = "https://github.com/goolord/alpha-nvim" },
})
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local logo = [[
██╗  ██╗████████╗██╗    ██╗       ██╗ ██╗
██║  ██║╚══██╔══╝██║    ██║██╗   ██╔╝██╔╝
███████║   ██║   ██║ █╗ ██║╚═╝  ██╔╝██╔╝ 
██╔══██║   ██║   ██║███╗██║██╗ ██╔╝██╔╝  
██║  ██║   ██║   ╚███╔███╔╝╚═╝██╔╝██╔╝   
╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝    ╚═╝ ╚═╝    
                                         
                               ]]
dashboard.section.header.val = vim.split(logo, "\n")

dashboard.section.buttons.val = {
	dashboard.button("f", " Find file", "<cmd>Telescope find_files<cr>"),
	dashboard.button("r", " Recent files", "<cmd>Telescope oldfiles<cr>"),
	dashboard.button("p", " Find project", "<cmd>Telescope projects<cr>"),
	dashboard.button("d", "🗓️Daily note", "<cmd>lua require('config.helpers').open_daily_note()<CR>"),
	dashboard.button(
		"v",
		"🧠Search vault",
		"<cmd>lua require('telescope.builtin').find_files({cwd = '~/sync-vault/' })<cr>"
	),
	dashboard.button(
		"c",
		" Config",
		"<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.stdpath('config') })<cr>"
	),
	dashboard.button("q", " Quit", "<cmd>qa<cr>"),
}

for _, button in ipairs(dashboard.section.buttons.val) do
	button.opts.hl = "AlphaButtons"
	button.opts.hl_shortcut = "AlphaShortcut"
end

dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.opts.layout[1].val = 8
dashboard.section.footer.val = "> hayden was here"
alpha.setup(dashboard.opts)
