" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

""""" enable the theme

syntax enable
colorscheme night-owl


hi SignifySignAdd ctermbg=235 ctermfg=150 guibg=NONE guifg=#b4be82
hi SignifySignChange ctermbg=235 ctermfg=109 guibg=NONE guifg=#89b8c2
hi SignifySignChangeDelete ctermbg=235 ctermfg=109 guibg=NONE guifg=#89b8c2
hi SignifySignDelete ctermbg=235 ctermfg=203 guibg=NONE guifg=#e27878
