-------------------- HELPERS -------------------------------
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

g.mapleader = " "
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.scrolloff = 4
opt.sidescrolloff = 8
opt.list = true
opt.swapfile = false
opt.wrap = false
opt.backup = false
opt.completeopt= { 'menuone', 'noinsert', 'noselect'}
opt.showtabline = 1

-- Search
opt.nu = true
opt.rnu = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.wildmode = {'lastused', 'full'}

-- Indent
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.smartindent = true

-- Viewport Navigation
map('', '<C-q>', '<C-w>q')
map('', '<C-s><C-p>', '<cmd>sp<CR>')
map('', '<C-v><C-p>', '<cmd>vsp<CR>')

map('', '<C-h>', '<C-w>h')
map('', '<C-j>', '<C-w>j')
map('', '<C-k>', '<C-w>k')
map('', '<C-l>', '<C-w>l')

-- Buffer Navigation
map('', '<leader>p', '<cmd>bp<CR>')
map('', '<leader>n', '<cmd>bn<CR>')
map('', '<leader>d', '<cmd>bd<CR>')


require('plugins')
local lsp = require('lspconfig')

lsp.pyright.setup{}
