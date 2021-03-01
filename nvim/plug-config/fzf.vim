map <leader>b :Buffers<CR>
nnoremap <C-g> :Rg <CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

function! GFilesFallback()
  let output = system('git rev-parse --show-toplevel') " Is there a faster way?
  let prefix = get(g:, 'fzf_command_prefix', '')
  if v:shell_error == 0
    exec "normal :" . prefix . "GFiles\<CR>"
  else
    exec "normal :" . prefix . "Files\<CR>"
  endif
  return 0
endfunction

nnoremap <c-p> :call GFilesFallback()<CR>

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8, 'highlight': 'Comment', 'border': 'sharp' } }


