call plug#begin('~/.vim/plugged')
	" Colorscheme
	Plug 'ayu-theme/ayu-vim'

	" Code Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Fuzzy Finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-commentary'

	Plug 'gioele/vim-autoswap'
	Plug 'vim-scripts/BufOnly.vim'
	Plug 'simeji/winresizer'

call plug#end()
