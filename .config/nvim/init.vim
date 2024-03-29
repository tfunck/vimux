
execute pathogen#infect()
syntax on
set mouse=a
set tabstop=4
set hlsearch

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set ts=4
set sw=4
set expandtab
set autoindent

"call plug#begin('~/.config/nvim/data/plugged')

"Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'

"call plug#end()

"augroup nerdtree_open
"    autocmd!
"    autocmd VimEnter * NERDTree | wincmd p
"augroup END
map rr gt
map ee gT


" remap number augmentation
:nnoremap <A-a> <C-a>
:nnoremap <A-x> <C-x>

imap jk <Esc>
nnoremap nt :NERDTreeToggle<CR>

nnoremap qq :YcmCompleter GetDoc<CR>

nnoremap <C-a> 

" block indentation
function! Komment()
  if getline(".") =~ '\/\*'
    let hls=@/
    s/^\/\*//
    s/*\/$//
    let @/=hls
  else
    let hls=@/
    s/^/\/*/
    s/$/*\//
    let @/=hls
  endif
endfunction
map K :call Komment()<CR>


set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


