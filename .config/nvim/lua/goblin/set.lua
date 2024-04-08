-- Fat ass cursor
vim.opt.guicursor = ""

-- Set line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Fix indents to be something relatively fucking normal...like not 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Now make that shit smart
vim.opt.smartindent = true

-- Turn off linewrap. That shit is dumb
vim.opt.smartindent = true

-- YOLO
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Incremental search is the shit
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Make the colors pretty
vim.opt.termguicolors = true

-- Fix some scrolling stuff
vim.opt.scrolloff = 8

-- Cursor lines, yum
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- This also does some shit
vim.opt.updatetime = 50 -- super fast updates, hell yeah
vim.opt.colorcolumn = "80" -- don't let lines get too long ya dingus
