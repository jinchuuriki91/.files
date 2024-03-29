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

cmd('filetype plugin indent on')
cmd('colorscheme onedark')
g.mapleader = " "
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.scrolloff = 4
opt.sidescrolloff = 8
opt.list = true
opt.listchars = 'tab:>-,trail:~,extends:>,precedes:<,lead:.'
opt.swapfile = false
opt.wrap = false
opt.backup = false
opt.completeopt= { 'menuone', 'noinsert', 'noselect'}
opt.showtabline = 1
opt.foldlevel = 20
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'

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
local zen_mode = require('zen-mode')
zen_mode.setup {}

local treesitter = require('nvim-treesitter.configs')
treesitter.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    ensured_installed = {
        "tsx",
        "yaml",
        "javascript",
        "dockerfile",
        "typescript",
        "vue",
        "scss",
        "toml",
        "python",
        "lua",
        "json",
        "java",
        "html",
        "graphql",
        "go",
        "css",
        "cpp",
        "bash"
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}
-- local lsp = require('lspconfig')

-- lsp.pyright.setup{}
