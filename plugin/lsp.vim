nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>n :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>o :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>
