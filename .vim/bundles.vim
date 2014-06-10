"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoBundle usage
"
" mkdir -p ~/.vim/
" mkdir -p ~/.vim/.bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/neobundle.vim
"
" 1. install :NeoBundleInstall
" 2. update  :NeoBundleInstall!
" 3. dalete  :NeoBundleClean
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible 
if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim
  filetype off
  call neobundle#rc(expand('~/.vim/.bundle'))

  filetype plugin on
  filetype indent on
endif

" == Plugins

NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/buftabs'
"NeoBundle 'vim-scripts/monday'       " :Ctrl-a -> next Ctrl-x -> prev ex.monday => tuesday
NeoBundle 'vim-scripts/svn-diff.vim'
NeoBundle 'vim-scripts/taglist.vim'  " :Tlist
NeoBundle 'vim-scripts/netrw.vim'
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'vim-scripts/zoom.vim' for GUI

"NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-rails'

" https://github.com/Shougo
NeoBundle 'Shougo/neocomplcache'

" https://github.com/nathanaelkane
NeoBundle 'nathanaelkane/vim-indent-guides'

" https://github.com/sandeepcr529
"NeoBundle 'sandeepcr529/Buffet'

" https://github.com/osyo-manga
NeoBundle 'osyo-manga/vim-over'    " :OverCommandLine

" https://github.com/szw
NeoBundle 'szw/vim-tags'

" https://github.com/itchyny/lightline.vim
NeoBundle 'itchyny/lightline.vim'

" https://github.com/slim-template
"NeoBundle 'slim-template/vim-slim'

" == Plugins End ...rest of bundles
