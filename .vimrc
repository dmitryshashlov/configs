filetype on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4

set hidden
set showmode
set showcmd
set nocompatible
set expandtab

set textwidth=120
set autoindent
set smartindent
set cindent

colorscheme kellys_modified

set novisualbell
set cursorline

set autochdir 
set statusline=%F[%p%%]

" set sidescrolloff=10

set number
set numberwidth=4

" set ruler
" set rulerformat=%55(:%{GetColorSyntaxName()}:\ %5l,%-6(%c%V%)\ %P%)

set hlsearch

set guioptions=egmt

set fullscreen

set fileencoding=utf-8

set autoread

" my maps
nnoremap <F1> :buffers<CR>
nnoremap <F2> :registers<CR>
nnoremap <F3> :marks<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> :w<CR>
nnoremap <S-F5> :wa<CR>
nnoremap <F6> :nohl<CR>
nnoremap <F7> :bp<CR>
nnoremap <F8> :bd<CR>
" nnoremap <S-F8> :w :bd!<CR>
nnoremap <F9> :bn<CR>

" text moving maps
" TODO:
" nnoremap <C-j> :m+<CR>==
" nnoremap <C-k> :m-2<CR>==
" inoremap <C-j> <Esc>:m+<CR>==gi
" inoremap <C-k> <Esc>:m-2<CR>==gi
" vnoremap <C-j> :m'>+<CR>gv=gv
" vnoremap <C-k> :m-2<CR>gv=gv
