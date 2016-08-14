call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'sbl/scvim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-clang'
Plug 'Chiel92/vim-autoformat'
Plug '0ax1/lxvc'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'zchee/deoplete-jedi'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'munshkr/vim-tidal'
Plug 'vim-airline/vim-airline'

" Add plugins to &runtimepath
call plug#end()

set nu
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set scrolloff=4
set foldmethod=syntax
autocmd BufWritePre * :%s/\s\+$//e
map <Esc><Esc> :w<CR>
map Y y$
set clipboard=unnamed

colorscheme lxvc
set background=dark
set t_Co=256

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
if filereadable("compile_commands.json")
    let g:deoplete#sources#clang#clang_complete_database = "."
endif
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "<Tab>"

" Autoformat
noremap <F3> :Autoformat<CR>

" CtrlP
noremap - :CtrlPBuffer<CR>

" terminal stuff
noremap <A-CR> :split term://fish<CR>i
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
