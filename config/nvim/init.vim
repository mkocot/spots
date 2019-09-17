if &compatible
  set nocompatible
endif
filetype off
" append to runtime path
set rtp+=/usr/share/vim/vimfiles
" initialize dein, plugins are installed to this directory
call dein#begin(expand('~/.cache/dein'))
" add packages here, e.g:
call dein#add('qwelyt/TrippingRobot')
call dein#add('dylanaraps/wal.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('fatih/vim-go')
" exit dein
call dein#end()
" auto-install missing packages on startup
if dein#check_install()
  call dein#install()
endif
filetype plugin on

" require dylanaraps/wal.vim
colorscheme wal

let g:deoplete#enable_at_startup = 1
