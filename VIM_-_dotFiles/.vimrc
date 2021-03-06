set autochdir
syntax enable                                               " turn on all magic, but leave personal color preferences
"syntax on                                                  " turn on all magic, disregard personal color preferences
set showmode                                                " show me when I am in insert or overtype mode
set showcmd                                                 " when a command is in progress, show it in the status bar

set wildmenu magic                                          " for completion at the : command line.
set ruler                                                   " turn on the "ruler" (status info) at the bottom of the screen
set hlsearch                                                " highlight all matches in text when you search
set showmatch                                               " show matches for braces, parens, etc.
set spelllang=en_us                                         " when I want spell-checking, I want it to be english
set spell

set nocompatible
filetype plugin on

set background=dark
"set background=light
"colorscheme desert                                         " ls /usr/share/vimNN/colors
colorscheme reykjavik                                       " git clone https://github.com/mswift42/vim-themes.git
                                                            " mkdir ~/.vim/colors; cp vim-themes/colors/*.vim ~/.vim/colors/

"hi comment ctermbg=blue
"hi string ctermbg=green
"
set ts=4 sts=4 sw=4 et
set tw=125 fo+=tcq wm=0
set foldmethod=indent
 
set cursorline
set cursorcolumn
set colorcolumn=125

hi CursorLine cterm=NONE ctermbg=grey ctermfg=black
hi CursorColumn cterm=NONE ctermbg=darkgreen ctermfg=black
hi ColorColumn cterm=NONE ctermbg=red ctermfg=black
                                                            " vim search/fold
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

"Plug 'mattn/emmet-vim'                                     " emmit plugin; git update?
                                                            " git clone https://github.com/mattn/emmet-vim.git
                                                            " cd emmet-vim
                                                            " cp plugin/emmet.vim ~/.vim/plugin/
                                                            " cp autoload/emmet.vim ~/.vim/autoload/
                                                            " cp -a autoload/emmet ~/.vim/autoload/

set runtimepath^=~/.vim/bundle/xterm-color-table.vim        " :set runtimepath?  eg :help rtp  eg $VIMRUNTIME eg :runtime  eg ~/.vim/bundle
"" set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
"" set rtp+="$HOME\\vimfiles\\bundle\\Vundle.vim\\"

if &diff
    highlight! link DiffText MatchParen
endif
