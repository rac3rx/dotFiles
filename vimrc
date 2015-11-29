set nocompatible
" :runtime syntax/colortest.vim  ref: http://www.robmeerman.co.uk/unix/256colours
set t_Co=256 "256 colors ref:http://robotsrule.us/vim/
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

Plugin 'fmoralesc/vim-pad'
let g:pad#dir="/Users/rac3rx/Downloads/Support/Data/Notational_Velocity_Data"

" minion plugin/bundle
Bundle 'edthedev/minion'
