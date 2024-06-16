vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- nvim-tree: disable at netrw start
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true -- optionally enable 24-bit color
-- vim.opt.relativenumber = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = false
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
