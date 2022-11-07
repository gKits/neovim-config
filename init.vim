set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set guicursor=i-ci-ve:block-blinkwait20-blinkon200-blinkoff150
set nohlsearch
set noerrorbells
set hidden
set nowrap
set scrolloff=8
set incsearch
set colorcolumn=120
set signcolumn=yes
set clipboard+=unnamedplus
set cursorline
set mouse=

" Plugins
call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind-nvim'
Plug 'windwp/nvim-autopairs'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'BurntSushi/ripgrep'

Plug 'nvim-tree/nvim-web-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

Plug 'axelf4/vim-strip-trailing-whitespace'

call plug#end()


" Keybinds
nnoremap <C-e> :Ex<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1

" Colorscheme
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme slate


" Mason
lua require('mason').setup()
lua require("nvim-autopairs").setup {}
lua require('cmp_config')
lua require('lsp_config')

