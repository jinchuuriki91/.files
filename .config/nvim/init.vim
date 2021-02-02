set nocompatible
syntax on
filetype plugin indent on
set encoding=UTF-8

" Disables annoying beeping
set noerrorbells

" Ref: https://vim.fandom.com/wiki/Indenting_source_code
set cursorline
set guicursor=
set relativenumber
set nohlsearch
set hidden
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noshowmode
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set updatetime=50
set colorcolumn=80
set foldnestmax=1
set foldmethod=indent
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'jremmen/vim-ripgrep'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'justinj/vim-react-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'alvan/vim-closetag'
Plug 'ambv/black'
call plug#end()

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif
let g:one_allow_italic = 1
if strftime("%H") > 8 && strftime("%H") < 18
    " set background=light
    set background=dark
else
    set background=dark
endif
colorscheme one

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command=['.git/']
let mapleader=' '
let g:netrw_browser_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0

let g:airline_theme='one'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = '?'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

nnoremap <leader><C-h> :wincmd h<CR>
nnoremap <leader><C-j> :wincmd j<CR>
nnoremap <leader><C-k> :wincmd k<CR>
nnoremap <leader><C-l> :wincmd l<CR>
nnoremap <leader>l :bn<CR>
nnoremap <leader>h :bp<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <C-s> :w<CR>

let g:goyo_width = '100'
let g:goyo_linenr = '1'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeIgnore = ['^build$', '^node_modules$']
let g:UltiSnipsExpandTrigger="<C-s>"
let g:python3_host_prog = '/home/linuxbrew/.linuxbrew/bin/python3'
