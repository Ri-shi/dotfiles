for f in split(glob('~/dotfiles/vim/*.vim'), '\n')
	let pth = split(f, '/')
	if pth[-1] != "index.vim"
		exe 'source' f
	endif
endfor
