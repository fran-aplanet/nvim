local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		-- python = { "blue" },
		python = { "ruff_fix", "ruff_format" },
        json = { "fixjson" },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_fallback = true,
	},
})
