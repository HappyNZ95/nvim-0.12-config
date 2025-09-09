-- Use PowerShell Core if installed, otherwise fallback
local ps = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"

-- Proper shell setup
vim.o.shell = ps
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.o.shellquote = ""
vim.o.shellxquote = ""
