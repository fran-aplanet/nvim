local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local lspkind = require("lspkind")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<cr>"] = cmp.mapping.confirm({ select = true }),
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
		[";"] = cmp.mapping.close(),
		["<C-p>"] = nil,
		["<C-n>"] = nil,
		["<Tab>"] = nil,
		["<S-Tab>"] = nil,
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			maxwidth = 70,
			ellipsis_char = "...",
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
})
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
