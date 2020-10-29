set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
syntax on

"set mouse=a

set incsearch
" detect puppet filetype
au BufRead,BufNewFile *.pp set filetype=puppet

execute pathogen#infect()
if has("gui_running")
  set guifont=Anonymous\ Pro\ for\ Powerline\ 13
endif
set t_Co=256


" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
