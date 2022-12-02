call plug#begin()


"--- LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"--- AUTOCOMPLETE 
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'onsails/lspkind-nvim'
"Plug 'nvim-lua/plenary.nvim'

"--- SNIPPETS
Plug 'rafamadriz/friendly-snippets'
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'

"--- VISUALS/COLOURS
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ellisonleao/gruvbox.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline-themes'

"--- UTILS
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }		" On-demand load 
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-commentary' " gcc to toggle line comment (gc(motion))

" Initialize plugin system - Executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

"--- AUTOCMD/MACRO/FUNC
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif	" Exit if NERDTree is only window in only tab

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <^-TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"--- GENERAL SETTINGS
"colorscheme tokyonight
set background=dark
colorscheme gruvbox
"let g:airline_theme='molokai'
let g:airline_theme='base16_gruvbox_dark_hard'
nnoremap <C-t> :NERDTreeToggle<CR>
set nocompatible
syntax on
set showmatch
set number
set numberwidth=1
set autoindent
""set expandtab
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
filetype plugin indent on
set smartindent
set completeopt=menu,menuone,noselect
set smartcase
set ignorecase
set signcolumn=yes
set cursorline
set mouse+=a
"-- Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

"--- CMP LUA CONFIG
"(deleted)
