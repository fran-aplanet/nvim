local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
        sorting_strategy = "descending",
		file_ignore_patterns = {
			"node_modules",
            "migrations",
			"%.jpg",
			"%.png",
			"%.svg",
			"%.mp4",
			"%.mp3",
			"%.webp",
			"%.min.",
			"%.ico",
			"CACHE",
			"dist",
			"%.bin",
		},
		path_display = { "truncate" },
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-c>"] = actions.close,
				["<C-q>"] = actions.smart_send_to_qflist,
				["<CR>"] = actions.select_default,
				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,
				["<C-h>"] = "which_key",
			},
			n = {
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,
			},
		},
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
})

require("telescope").load_extension("fzy_native")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>af", builtin.git_files, {})
vim.keymap.set("n", "<leader>tg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
vim.keymap.set("n", "<leader>tq", builtin.quickfix, {})
vim.keymap.set("n", "<leader>twc", function()
    builtin.lsp_dynamic_workspace_symbols({symbols = {"class"}})
end)
vim.keymap.set("n", "<leader>twf", function()
    builtin.lsp_dynamic_workspace_symbols({symbols = {"function", "method"}})
end)
vim.keymap.set("n", "<leader>twv", function()
    builtin.lsp_dynamic_workspace_symbols({symbols = {"variable", "field", "constant", }})
end)
vim.keymap.set("n", "<leader>tw", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>ts", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>tc", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
vim.keymap.set("n", "<leader>tr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>ti", builtin.lsp_implementations, {})
vim.keymap.set("n", "<leader>tdw", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>td", "<cmd>Telescope diagnostics bufnr=0<cr>", {})
vim.keymap.set("n", "<leader>tt", ":TodoTelescope<cr>", {})
vim.keymap.set("n", "<leader>gl", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
