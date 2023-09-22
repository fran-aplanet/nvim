local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local lspkind = require("lspkind")
local vscodesnippets = require("luasnip.loaders.from_vscode")

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
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- For luasnip users.
		{ name = "buffer" },
	}),
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = lspkind.cmp_format({ with_text = true, maxwidth = 50 }),
	},
})
vscodesnippets.lazy_load()
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
