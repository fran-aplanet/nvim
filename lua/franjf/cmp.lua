local cmp = require("cmp")
local luasnip = require("luasnip")
local source_mapping = {
	buffer = "[Buffer]",
	nvim_lsp = "[LSP]",
	nvim_lua = "[Lua]",
	cmp_tabnine = "[TN]",
	path = "[Path]",
}
local lspkind = require("lspkind")
require('lspkind').init({
    with_text = true,
})
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
cmp.setup({
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body)

			-- For `luasnip` user.
			require("luasnip").lsp_expand(args.body)

			-- For `ultisnips` user.
			-- vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
        -- Enter
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        -- Tab mapping
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
	},

    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_mapping[entry.source.name]
            if entry.source.name == 'cmp_tabnine' then
                if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                    menu = entry.completion_item.data.detail .. ' ' .. menu
                end
                vim_item.kind = ''
            end
            vim_item.menu = menu
            return vim_item
        end
    },

	sources = {
        -- tabnine completion? yayaya
        -- { name = "cmp_tabnine" },

		{ name = "nvim_lsp" },

		-- For vsnip user.
		-- { name = 'vsnip' },

		-- For luasnip user.
		{ name = "luasnip" },

		-- For ultisnips user.
		-- { name = 'ultisnips' },

		{ name = "buffer" },
	},
})

local _, autopairs = pcall(require, 'nvim-autopairs')
autopairs.setup()

-- require('nvim-autopairs.completion.cmp').setup({
require('cmp').setup({
    map_cr = true,
    map_complete = true,
    auto_select = true,
    -- enable_check_bracket_line = false
})
-- local lsp_symbols = {
--     Text = "   (Text) ",
--     Method = "   (Method)",
--     Function = "   (Function)",
--     Constructor = "   (Constructor)",
--     Field = " ﴲ  (Field)",
--     Variable = "[] (Variable)",
--     Class = "   (Class)",
--     Interface = " ﰮ  (Interface)",
--     Module = "   (Module)",
--     Property = " 襁 (Property)",
--     Unit = "   (Unit)",
--     Value = "   (Value)",
--     Enum = " 練 (Enum)",
--     Keyword = "   (Keyword)",
--     Snippet = "   (Snippet)",
--     Color = "   (Color)",
--     File = "   (File)",
--     Reference = "   (Reference)",
--     Folder = "   (Folder)",
--     EnumMember = "   (EnumMember)",
--     Constant = " ﲀ  (Constant)",
--     Struct = " ﳤ  (Struct)",
--     Event = "   (Event)",
--     Operator = "   (Operator)",
--     TypeParameter = "   (TypeParameter)",
-- }
-- local cmp = require 'cmp'
-- local luasnip = require 'luasnip'

-- cmp.setup {
--   -- load snippet support
--   snippet = {
--     expand = function(args)
--       luasnip.lsp_expand(args.body)
--     end,
--   },

-- -- completion settings
--   completion = {
--     -- completeopt = 'menu,menuone,noselect'
--     completeopt = 'menu,menuone,noselect',
--     keyword_length = 2,
--     -- autocomplete = true
--   },

--   -- key mapping
--   mapping = {
--     ['<C-n>'] = cmp.mapping.select_next_item(),
--     ['<C-p>'] = cmp.mapping.select_prev_item(),
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm {
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true,
--     },

--     -- Tab mapping
--     ['<Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       elseif luasnip.expand_or_jumpable() then
--         luasnip.expand_or_jump()
--       else
--         fallback()
--       end
--     end,
--     ['<S-Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       elseif luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end
--   },

--   -- load sources, see: https://github.com/topics/nvim-cmp
--   sources = {
--     { name = 'nvim_lsp' },
--     { name = 'luasnip' },
--     { name = 'path' },
--     { name = 'buffer' },
--   },
--   formatting = {
--         format = function(entry, item)
--             item.kind = lsp_symbols[item.kind]
--             item.menu = ({
--                 buffer = "[Buffer]",
--                 nvim_lsp = "[LSP]",
--                 vsnip = "[Snippet]",
--             })[entry.source.name]

--             return item
--         end,
--   },
-- }

-- local _, autopairs = pcall(require, 'nvim-autopairs')
-- autopairs.setup()

-- -- require('nvim-autopairs.completion.cmp').setup({
-- require('cmp').setup({
--     map_cr = true,
--     map_complete = true,
--     auto_select = true,
--     -- enable_check_bracket_line = false
-- })
