nnoremap <Leader>gs :G<cr>
" Commits
nnoremap <Leader>gc :Git add -- . <bar> :Git commit<cr>
nnoremap <Leader>gac :Git submodule foreach --recursive git commit <bar> :Git commit<cr>
" Push
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gap :Git submodule foreach --recursive git push <bar> :Git push<cr>
" From Lord TPope 
nnoremap <leader>gop :Git -c push.default=current push<cr>
