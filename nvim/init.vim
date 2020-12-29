"▄█    ▄   ▄█    ▄▄▄▄▀        ▄   ▄█ █▀▄▀█ 
"██     █  ██ ▀▀▀ █            █  ██ █ █ █ 
"██ ██   █ ██     █       █     █ ██ █ ▄ █ 
"▐█ █ █  █ ▐█    █         █    █ ▐█ █   █ 
 "▐ █  █ █  ▐   ▀      ██   █  █   ▐    █  
   "█   ██                   █▐        ▀   
                            "▐             

if exists('g:vscode') 
  source $HOME/.config/nvim/plug-config/vscode.vim
else
call plug#begin('~/.vim/plugged')

" essential plugs
Plug 'sheerun/vim-polyglot' 
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'nvim-treesitter/nvim-treesitter'
Plug 'epilande/vim-react-snippets'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes' 
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'
Plug 'mboughaba/i3config.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" themes
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim' 
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sainnhe/edge'

" git gutter
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif 

" YEP COCK
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-devicons should be last
Plug 'ryanoasis/vim-devicons'

call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim
"source $HOME/.config/nvim/themes/vimone.vim
"source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/themes/onedark.vim
"source $HOME/.config/nvim/themes/gotham.vim
"source $HOME/.config/nvim/themes/nord.vim
"source $HOME/.config/nvim/themes/codedark.vim
"source $HOME/.config/nvim/themes/nightowl.vim
"source $HOME/.config/nvim/themes/iceberg.vim
"source $HOME/.config/nvim/themes/oceanic-next.vim
"source $HOME/.config/nvim/themes/ayu.vim
"source $HOME/.config/nvim/themes/palenight.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/fzf.vim



function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nnoremap <Leader>; :call SynStack()<CR>
endif

"set termguicolors
"colorscheme base16-tomorrow-night
"colorscheme nightfly

"set background=dark
"colorscheme oceanic_material

"let g:oceanic_material_allow_bold=0
"highlight Statement  gui=NONE cterm=NONE term=NONE
