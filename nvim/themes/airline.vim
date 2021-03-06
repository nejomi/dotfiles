" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1

" fade effect
"let g:airline_left_sep = '▓▒░'
"let g:airline_right_sep = '░▒▓'

" remove ugly orange error
let g:airline_section_warning = ''
let g:airline_section_error = ''

" Enable airline to use devicons
let g:airline_powerline_fonts = 1

" dont show commits status for git
let g:airline#extensions#hunks#enabled=0

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_mode_map = {}
let g:airline_mode_map['ic'] = 'INSERT'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
