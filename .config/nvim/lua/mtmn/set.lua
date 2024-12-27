vim.opt.number = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.cursorline = true
vim.cmd [[let &t_SI = "\e[6 q"]]
vim.cmd [[let &t_EI = "\e[2 q"]]
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25-blinkwait500-blinkon250-blinkoff150,r-cr:hor20,o:hor50"

vim.opt.showmode = false
vim.opt.laststatus = 3
vim.opt.winbar = "%=%m %f"
