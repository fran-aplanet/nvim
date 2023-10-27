require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "autopep8" },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_fallback = true,
	},
})
