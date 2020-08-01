call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'lilydjwg/colorizer'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'alvan/vim-closetag'
" Plug 'justinmk/vim-dirvish'
" Plug 'tpope/vim-vinegar'
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'honza/vim-snippets'
Plug 'sainnhe/sonokai'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-devicons should be always last
Plug 'ryanoasis/vim-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
"source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/themes/gruvbox-material.vim
"source $HOME/.config/nvim/themes/sonokai.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/fugitive.vim

" vim-closetag
let g:closetag_filetypes = 'typescript,jsx,javascript'


nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>

