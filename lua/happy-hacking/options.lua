vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.showcmd = false
opt.swapfile = false
opt.autoread = true
opt.splitbelow = true
opt.splitright = true

-- Whitespace markers:
opt.list = true
opt.listchars = { tab = " ", trail = "•", nbsp = "␣" }

-- Visual line wrapping:
opt.linebreak = true
opt.breakindent = true
opt.showbreak = "…"

-- Search and spelling:
opt.ignorecase = true
opt.smartcase = true
opt.spelllang = { "en_us", "de" }

-- Indentation defaults:
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 0

-- Signs and colors.
opt.signcolumn = "yes"
opt.colorcolumn = "+0"
opt.termguicolors = true

vim.cmd.colorscheme("default")
