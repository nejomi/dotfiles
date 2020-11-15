" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'

let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_better_performance = 1

let g:gruvbox_material_palette = 'original'

if (has("termguicolors"))
  set termguicolors
endif

colorscheme gruvbox-material
let g:airline_theme = 'gruvbox_material'

