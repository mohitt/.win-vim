" https://github.com/MeirKriheli/dotvim
"
" ==================================================
" Shortcuts Documented
" ==================================================
" jj - act as Esc in insert and command modes
" <CTRL> + [hjkl] and Control + Arrow Keys -  window movement commands
" <C-TAB> and <C-TAB> - Next or previous buffer
" <leader>v - loads .vimrc
" <leader>V - reloads .vimrec -- activating changes (needs save)
" <leader>S - Remove trailing whitespace
" <F4> - Toggle search highlight
" - and + - Resize horizontal splits
" <M>< and <M>< - Resize vertical splits
" <F2> - Close current split (window)
" <F3> - Toggle NERD tree
" <F4> - Toggle search highlight
" <F5> - Toggle Tagbar
" <F9> - Toggle logical (RTL, e.g: Hebrew) editing
" <F8> - Toggle visual (RTL, e.g: Hebrew) editing

" ==================================================
" Allow pre-definitions via ~/.win-vim/vimrc.before
" ==================================================
if filereadable(expand("~/.win-vim/vimrc.before"))
    source ~/.win-vim/vimrc.before
endif

" ==================================================
" Source the files ~/.win-vim/vimrc.d/
" ==================================================
for f in split(glob('~/.win-vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

" ==================================================
" Allow overrides via ~/.win-vim/vimrc.after
" ==================================================
if filereadable(expand("~/.win-vim/vimrc.after"))
    source ~/.win-vim/vimrc.after
endif

" ==================================================
" Allow overrides via ~/.win-vim/vimrc.local
" ==================================================
if filereadable(expand("~/.win-vim/vimrc.local"))
    source ~/.win-vim/vimrc.local
endif

autocmd Filetype json if getfsize(@%) > 10000 | setlocal syntax=OFF | endif

