if (has("termguicolors"))
  set termguicolors
endif

colorscheme iceberg

hi jsThis guifg=#84a0c6
"hi jsThis guifg=#a093c7
hi jsFuncCall guifg=#b4be82
hi jsObjectKey guifg=#c6c8d1
hi jsClassProperty guifg=#89b8c2
hi jsxComponentName guifg=#a093c7
hi VertSplit ctermbg=NONE guibg=NONE
hi LineNr ctermfg=NONE guibg=NONE
hi SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

"highlight SignifySignAdd    guibg=NONE
"highlight SignifySignDelete guibg=NONE
"highlight SignifySignChange guibg=NONE

hi SignifySignAdd ctermbg=235 ctermfg=150 guibg=NONE guifg=#b4be82
hi SignifySignChange ctermbg=235 ctermfg=109 guibg=NONE guifg=#89b8c2
hi SignifySignChangeDelete ctermbg=235 ctermfg=109 guibg=NONE guifg=#89b8c2
hi SignifySignDelete ctermbg=235 ctermfg=203 guibg=NONE guifg=#e27878
