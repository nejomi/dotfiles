set t_Co=256
set termguicolors
let g:codedark_term256=1

colorscheme codedark

let g:airline_theme='codedark'

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
hi SignifySignAdd ctermbg=235 ctermfg=150 guibg=NONE guifg=#608B4E
hi SignifySignChange ctermbg=235 ctermfg=109 guibg=NONE guifg=#9CDCFE
hi SignifySignChangeDelete ctermbg=235 ctermfg=109 guibg=NONE guifg=#9CDCFE
hi SignifySignDelete ctermbg=235 ctermfg=203 guibg=NONE guifg=#F44747
