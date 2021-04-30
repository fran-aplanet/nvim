" Save current buffer
nnoremap <Leader>w :w<CR>
" Substitution of words
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
" Navigate
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
" TODO
nmap <Leader>tc <Plug>BujoChecknormal
nmap <Leader>ta <Plug>BujoAddnormal
