if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:airline_theme = 'spaceduck'
colorscheme spaceduck

hi SignifySignAdd ctermbg=235 ctermfg=150 guibg=NONE guifg=#5ccc96
hi SignifySignChange ctermbg=235 ctermfg=109 guibg=NONE guifg=#00a3cc
hi SignifySignChangeDelete ctermbg=235 ctermfg=109 guibg=NONE guifg=#e33400
hi SignifySignDelete ctermbg=235 ctermfg=203 guibg=NONE guifg=#e33400
