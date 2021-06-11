local o = vim.o
local g = vim.g
local wo = vim.wo
local bo = vim.bo

-- Generals
g.mapleader = ' '
o.errorbells = false
o.guicursor = ''

-- Theming
o.termguicolors = true
o.syntax = 'on'
g.colors_name = 'sonokai'

-- Buffers
bo.autoread = true
o.hidden = true
o.encoding = 'UTF-8'

-- Windows
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.scrolloff = 8
wo.colorcolumn = '80'
wo.signcolumn = 'yes'
o.laststatus = 2

-- Indentation
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
bo.smartindent = true

-- Search
o.incsearch = true

-- Wildmenu
o.wildmenu = true
o.wildmode = 'longest:full,full'
