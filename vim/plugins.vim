call plug#begin('~/.vim/plugged')
	" Colorscheme
	Plug 'ayu-theme/ayu-vim'

	" Code Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'OmniSharp/omnisharp-vim'

	" Fuzzy Finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-commentary'

	Plug 'dusans/vim-hardmode'

call plug#end()
