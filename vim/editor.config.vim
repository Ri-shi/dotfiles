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

"Vim Hard Mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Line Numbers
set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
