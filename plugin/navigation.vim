" Open Netwr and resize like a navigation tab
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>+ :vertical resize +10<CR>
nnoremap <leader>- :vertical resize -10<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

let g:sneak#label = 1
nmap <leader>s <Plug>Sneak_s
nmap <leader>S <Plug>Sneak_S

" NEED REMAP FOR THIS, NOW USING IN HARPOOOOON
" nnoremap <C-k> :cn<CR>zz
" nnoremap <C-j> :cp<CR>zz
