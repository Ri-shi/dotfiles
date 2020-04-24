
	let NERDTreeIgnore = ['\.class$']
	map - :NERDTreeToggle <CR>
	" Close vim if only tree is open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


