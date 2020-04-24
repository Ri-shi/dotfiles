" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
	
	Plug 'ayu-theme/ayu-vim'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'roman/golden-ratio'

	"vim-signify
	if has('nvim') || has('patch-8.0.902')
		Plug 'mhinz/vim-signify'
	else
		Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
	endif

	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
	Plug 'easymotion/vim-easymotion'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'dense-analysis/ale'
	Plug 'liuchengxu/eleline.vim'
	Plug 'gioele/vim-autoswap'
	Plug 'vim-scripts/BufOnly.vim'
	Plug 'simeji/winresizer'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'mkitt/tabline.vim'
	Plug 'yuttie/comfortable-motion.vim'
	Plug 'kshenoy/vim-signature'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }


	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	" DevIcons must always be loaded last
	Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()
