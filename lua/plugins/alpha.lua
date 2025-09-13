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
local logo = [[
hhhhhhh                     tttt                                                                      /////// ///////
h:::::h                  ttt:::t                                                                     /:::::/ /:::::/ 
h:::::h                  t:::::t                                                                    /:::::/ /:::::/  
h:::::h                  t:::::t                                                                   /:::::/ /:::::/   
 h::::h hhhhh      ttttttt:::::tttttttwwwwwww           wwwww           wwwwwww                   /:::::/ /:::::/    
 h::::hh:::::hhh   t:::::::::::::::::t w:::::w         w:::::w         w:::::w  ::::::           /:::::/ /:::::/     
 h::::::::::::::hh t:::::::::::::::::t  w:::::w       w:::::::w       w:::::w   ::::::          /:::::/ /:::::/      
 h:::::::hhh::::::htttttt:::::::tttttt   w:::::w     w:::::::::w     w:::::w    ::::::         /:::::/ /:::::/       
 h::::::h   h::::::h     t:::::t          w:::::w   w:::::w:::::w   w:::::w                   /:::::/ /:::::/        
 h:::::h     h:::::h     t:::::t           w:::::w w:::::w w:::::w w:::::w                   /:::::/ /:::::/         
 h:::::h     h:::::h     t:::::t            w:::::w:::::w   w:::::w:::::w                   /:::::/ /:::::/          
 h:::::h     h:::::h     t:::::t    tttttt   w:::::::::w     w:::::::::w        ::::::     /:::::/ /:::::/           
 h:::::h     h:::::h     t::::::tttt:::::t    w:::::::w       w:::::::w         ::::::    /:::::/ /:::::/            
 h:::::h     h:::::h     tt::::::::::::::t     w:::::w         w:::::w          ::::::   /:::::/ /:::::/             
 h:::::h     h:::::h       tt:::::::::::tt      w:::w           w:::w                   /:::::/ /:::::/              
 hhhhhhh     hhhhhhh         ttttttttttt         www             www                   /////// ///////               
    ]]
dashboard.section.header.val = vim.split(logo, "\n")

dashboard.section.buttons.val = {
	dashboard.button("f", " htw://files/", "<cmd>Telescope find_files<cr>"),
	dashboard.button("r", " htw://files/recent/", "<cmd>Telescope oldfiles<cr>"),
	dashboard.button("p", " htw://files/projects/", "<cmd>Telescope projects<cr>"),
	dashboard.button(
		"v",
		"🧠htw://vault/",
		"<cmd>lua require('telescope.builtin').find_files({cwd = '~/sync-vault/' })<cr>"
	),
	dashboard.button(
		"d",
		"🗓️htw://vault/diary/" .. os.date("%Y-%m-%d") .. ".md",
		"<cmd>lua require('config.helpers').open_daily_note()<CR>"
	),
	dashboard.button(
		"c",
		" htw://nvim/config/",
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
dashboard.opts.layout[1].val = 6
dashboard.section.footer.val = "> hayden was here"
alpha.setup(dashboard.opts)
