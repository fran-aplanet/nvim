lua require("franjf")

"Files
nnoremap <leader>f :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>af :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>vrc :lua require('franjf.telescope').search_dotfiles()<CR>
"Strings
nnoremap <leader>grs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>grw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"Neovim
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
"Git
nnoremap <leader>gb :lua require('franjf.telescope').git_branches()<CR>
"Worktrees
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gwa :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
"More stuff
nnoremap <leader>sd :lua require('telescope.builtin').lsp_document_symbols()<CR>
nnoremap <leader>sw :lua require('telescope.builtin').lsp_workspace_symbols()<CR>
nnoremap <leader>d :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <leader>th :lua require('telescope.builtin').colorscheme()<CR>
