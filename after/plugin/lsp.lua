local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "rn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("n", "<leader>o", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>n", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("i", "<leader>h", function() 
        vim.lsp.buf.signature_help() 
    end, opts)
	vim.keymap.set("n", "<leader>w", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader>r", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "pyright", },
    handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})
