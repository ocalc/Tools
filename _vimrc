" highlight matched
set hlsearch
" case insensitive search
set ignorecase
set smartcase
" search while typing
set incsearch
" wrap-around when searching
set wrapscan
" show pressed keys in lower right corner
set showcmd
" tab -> spaces
set expandtab
set tabstop=4
set shiftwidth=4
" keep a 5 line buffer for the cursor from top/bottom of window
set scrolloff=5
" X11 clipboard
set clipboard=unnamed
" use ~ with movement
set tildeop

" mappings
"nnoremap ; :
inoremap jj <Esc>

" clear highlighted search term on space
noremap <silent> <Space> :nohls<CR>

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" MOVE LINE/BLOCK
nnoremap <C-S-J> :m+<CR>==
nnoremap <C-S-K> :m-2<CR>==
inoremap <C-S-J> <Esc>:m+<CR>==gi
inoremap <C-S-K> <Esc>:m-2<CR>==gi
vnoremap <C-S-J> :m'>+<CR>gv=gv
vnoremap <C-S-K> :m-2<CR>gv=gv

" delete in black hole
vnoremap <leader>d "_d

"***** gVim *******************
" autocmd
" maximize gVim at startup
au GUIEnter * simalt ~x
" indent XML
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

" parse syntax on gVim
:syntax on

" turn ftplugn on
filetype plugin on

" color
":colorscheme wombat256