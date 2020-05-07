"============== Leader Key =============="
let mapleader =" "

"============== Map better window navigations =============="
function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr()) "we havent moved
		if (match(a:key,'[jk]')) "were we going up/down
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction

map <Leader>h              :call WinMove('h')<cr>
map <Leader>k              :call WinMove('k')<cr>
map <Leader>l              :call WinMove('l')<cr>
map <Leader>j              :call WinMove('j')<cr>


"============== Misc =============="
" allow selection of window with mouse
set mouse=a

"=====[ Quicker access to Ex commands ]==================" 
"nnoremap ; : 
"nnoremap : ;
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
xmap <BS> x

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"====[ Make the 81st column stand out ]====================

" EITHER the entire 81st column, full-screen...
highlight ColorColumn ctermbg=magenta
set colorcolumn=81

" OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Toggle line numbers
" Relative or absolute number lines
nnoremap <Leader>n :set invrelativenumber<CR>

" Make / Fix Indentation...
nmap + gg=G``
nmap = :ALEFix<CR>

" Shortcut to open fzf
map <C-p> :FZF<CR>
map <C-\> :Buffers<CR>
map <C-_> :GFiles<CR>

" Make vaa select the entire file...
xmap aa VGo1G
" YCM COFIG
"let g:ycm_autoclose_preview_window_after_completion=1

" Clear search highlight with enter
nnoremap <Leader>c :noh<CR><CR>

" Easy Motion Leader
" This didnt work. I think it interfeared with a coc shortcut
" map \ <Plug>(easymotion-prefix)


