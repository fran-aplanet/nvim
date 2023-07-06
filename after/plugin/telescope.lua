local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "%.jpg", "%.png", "%.svg", "%.mp4", "%.mp3", "%.webp", "%.min.", "%.ico", "__init__.py", "CACHE", "dist", "%.bin"},
    mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-c>"] = actions.close,
          ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<CR>"] = actions.select_default,
          ["<C-u>"] = actions.preview_scrolling_up,
          ["<C-d>"] = actions.preview_scrolling_down,
          ["<C-h>"] = "which_key"
        },
        n = {
          ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<C-u>"] = actions.preview_scrolling_up,
          ["<C-d>"] = actions.preview_scrolling_down,
      }
    }
  },
  extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>af', builtin.git_files, {})
vim.keymap.set('n', '<leader>tg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>tq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>tw', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>ts', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>th', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>tr', builtin.lsp_references, {})
