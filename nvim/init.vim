let mapleader=" "

if exists('g:vscode')
	nmap <Tab> :Tabnext<CR>
	nmap <S-Tab> :Tabprevious<CR>
	nnoremap <leader>c :Tabclose<CR>

else
	" ordinary Neovim
endif

set clipboard=unnamedplus
