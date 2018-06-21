
if empty(glob('~/.vim/autoload/plug.vim'))
 	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	    			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'scrooloose/nerdcommenter'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf'

Plug 'terryma/vim-multiple-cursors'

Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-eunuch'

Plug 'mileszs/ack.vim'

Plug 'junegunn/goyo.vim'

Plug 'airblade/vim-gitgutter'

Plug 'maxbrunsfeld/vim-yankstack'

" Color schemes
Plug 'crucerucalin/peaksea.vim' 
Plug 'sjl/badwolf'
Plug 'flazz/vim-colorschemes'

call plug#end()