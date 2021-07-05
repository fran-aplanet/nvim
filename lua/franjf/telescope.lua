local actions = require('telescope.actions')
require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"
        },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
	layout_config = {
		prompt_position = "bottom",
		width = 0.75,
		preview_cutoff = 120,
		horizontal = {
			mirror = false,
			preview_width = 0.5
		},
		vertical = {
			mirror = false
		}
        },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        file_ignore_patterns = {"%.pyc", "%.pdf", "%.xml", "%.xlsx", "%.xls", "%.docx", "%.zip", "%.rar", "%.jpg", "%.png", "%.svg"},
        shorten_path = true,
        winblend = 0,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker,
        mappings = {
           i = {
               ["<C-x>"] = false,
               ["<C-q>"] = actions.send_to_qflist,
               ["<C-j>"] = actions.move_selection_next,
               ["<C-k>"] = actions.move_selection_previous,
           },
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
require("telescope").load_extension("git_worktree")

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim/",
    })
end

function set_background(content)
    vim.fn.system(
        "gsettings set org.gnome.desktop.background picture-uri file://".. content)
end

local function select_background(prompt_bufnr, map)
    local function set_the_background(close)
        local content =
        require('telescope.actions.state').get_selected_entry(prompt_bufnr)
        set_background(content.cwd .. "/" .. content.value)
        if close then
            require('telescope.actions').close(prompt_bufnr)
        end
    end

    map('i', '<C-p>', function()
        set_the_background()
    end)

    map('i', '<CR>', function()
        set_the_background(true)
    end)
end

local function image_selector(prompt, cwd)
    return function()
        require("telescope.builtin").find_files({
            prompt_title = prompt,
            cwd = cwd,

            attach_mappings = function(prompt_bufnr, map)
                select_background(prompt_bufnr, map)

                -- Please continue mapping (attaching additional key maps):
                -- Ctrl+n/p to move up and down the list.
                return true
            end
        })
    end
end

M.anime_selector = image_selector("< Awesome! backgrounds > ", "~/Backgrounds")


M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', '<c-d>', actions.git_delete_branch)
            return true
        end
    })
end

return M
