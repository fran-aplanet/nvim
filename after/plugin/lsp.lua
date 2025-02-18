local lsp_zero = require("lsp-zero")
local lspconfig = require("lspconfig")

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
	vim.keymap.set("n", "<leader>h", function() 
        vim.lsp.buf.signature_help() 
    end, opts)
	-- vim.keymap.set("n", "<leader>w", function()
	-- 	vim.lsp.buf.workspace_symbol()
	-- end, opts)
	vim.keymap.set("n", "<leader>r", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "ruff", 'pylsp' },
})

local lspconfig = require("lspconfig")
lspconfig.ruff.setup{}
lspconfig.pylsp.setup{}

-- lspconfig.pyright.setup {
--     on_attach = on_attach,
--     settings = {
--         -- pyright = {
--         --     autoImportCompletion = true,
--         -- },
--         python = {
--             analysis = {
--                 autoSearchPaths = true,diagnosticMode = 'openFilesOnly',useLibraryCodeForTypes = true,typeCheckingMode = 'off'
--             }
--         }
--     }
-- }
