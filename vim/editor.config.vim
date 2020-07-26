set number
set cursorcolumn "highlight current column
set cursorline "highlight current line

" Colorscheme
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Set LineNumber Colors:
function! MyHighlights() abort
    highlight LineNr       gui=NONE guifg=#f8c8c8
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

" Ensures word-wrap does not split words
set formatoptions=l
set lbr
