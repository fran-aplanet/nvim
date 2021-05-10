" Save current buffer
nnoremap <Leader>w :w<CR>
" Substitution of words
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<left><left>
" TODO
nmap <Leader>tc <Plug>BujoChecknormal
nmap <Leader>ta <Plug>BujoAddnormal
