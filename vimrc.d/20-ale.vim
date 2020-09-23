" ===================================================================
" ale (Asynchronous Lint Engine) settings 
" ===================================================================

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" For airline integrstion
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'

" Put this in vimrc or a plugin file of your own.
" " After this is configured, :ALEFix will try and fix your JS code with
" ESLint.
let g:ale_fixers = {
\   'javascript': ['prettier'],
\}

let g:ale_linters = {
\   'javascript': ['prettier'],
\}

"
" " Set this setting in vimrc if you want to fix files automatically on save.
" " This is off by default.
" let g:ale_fix_on_save = 1
" }"
