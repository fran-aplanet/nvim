" Leader
let mapleader=" "
" Ignore space and add spanish letter for Esc mode
nnoremap <SPACE> <Nop>
inoremap ñ <Esc>
inoremap <C-c> <esc>
" Edit Configuration File instantly
nnoremap <Leader>v :e $MYVIMRC<cr>
" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"From PrimeAgen"
nnoremap <leader>y "+y
vnoremap <leader>y "+y

vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>


"Save with permissions (be really CAREFUL in which server do you use it)
nnoremap <leader> z <Esc>:w<CR>:silent !chmod -R 777 %<CR>
