" Important!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_better_performance = 1

let g:gruvbox_material_palette = 'mix'

colorscheme gruvbox-material

