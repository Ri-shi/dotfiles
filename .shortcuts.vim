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

map <C-h>              :call WinMove('h')<cr>
map <C-k>              :call WinMove('k')<cr>
map <C-l>              :call WinMove('l')<cr>
map <C-j>              :call WinMove('j')<cr>


"============== Misc =============="

" If you want to start window resize mode by `Ctrl+T`
let g:winresizer_start_key = '<C-T>'

"=====[ Quicker access to Ex commands ]==================" 
"nnoremap ; : 
"nnoremap : ;
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
xmap <BS> x

" Toggle line numbers
" Relative or absolute number lines
nnoremap <C-n> :set invrelativenumber<CR>

" Make / Fix Indentation...
nmap + gg=G``

" Shortcut to open fzf
map <C-p> :FZF<CR>
map <C-\> :Buffers<CR>
map <C-_> :GFiles<CR>

" Make vaa select the entire file...
xmap aa VGo1G
" YCM COFIG
"let g:ycm_autoclose_preview_window_after_completion=1

" Clear search highlight with enter
nnoremap <Leader>n :noh<CR><CR>

