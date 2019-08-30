let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:onedark_termcolors=256

set number
set encoding=UTF-8
set mouse=a

set showmatch
set formatoptions+=o
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set nojoinspaces
set splitbelow
set splitright
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

syntax on
nmap <F8> :TagbarToggle<CR>
nmap <leader>nr :NERDTreeToggle<CR>
nmap <C-s> :w<CR>
nmap <leader>fo :Files<CR>
cabbr <expr> %% expand('%:p:h')

if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:.,precedes:.,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

call plug#begin('~/.config/nvim/plugged')
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'leafgarland/typescript-vim'
Plug 'wakatime/vim-wakatime'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'nvie/vim-flake8'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-grepper'
Plug 'majutsushi/tagbar'
Plug 'leshill/vim-json'
Plug 'kassio/neoterm'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'garbas/vim-snipmate'
Plug 'fatih/vim-go'
Plug 'ervandew/supertab'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chr4/nginx.vim'
Plug 'cespare/vim-toml'
Plug 'brooth/far.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/MatchTagAlways'
Plug 'SirVer/ultisnips'
Plug 'Quramy/vison'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme onedark
