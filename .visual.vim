syntax on
set number
set wildmenu
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set background=dark
set termguicolors
set cursorline "highlight current line
set cursorcolumn "highlight current column

"============== Color Scheme =============="
let ayucolor="dark"

" Set LineNumber Colors:
function! MyHighlights() abort
    highlight LineNr       gui=NONE guifg=#f8c8c8
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

colorscheme ayu

"============== Status Line =============="
set laststatus=2
let g:eleline_slim = 1

"============== Editor =============="
" Indents word-wrapped lines as much as the 'parent' line
set breakindent

" Ensures word-wrap does not split words
set formatoptions=l
set lbr


