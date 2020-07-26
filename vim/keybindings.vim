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


"=========== Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...======="
xmap <BS> x

"=========== Toggle line numbers ==========="
" Relative or absolute number lines
nnoremap <Leader>n :set invrelativenumber<CR>

"========= Make / Fix Indentation... ========="
nmap + gg=G``

" Make vaa select the entire file...
xmap aa VGo1G

" Clear search highlight with enter
nnoremap <Leader>c :noh<CR><CR>
