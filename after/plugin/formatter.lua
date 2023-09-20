require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_fallback = true,
	},
})
