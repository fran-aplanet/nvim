local pickers = require("telescope.pickers")
local sorters = require("telescope.sorters")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")


require("telescope").setup({
    defaults = {
      prompt_prefix = "   ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "descending",
      file_sorter = sorters.get_fuzzy_file,
      generic_sorter = sorters.get_generic_fuzzy_sorter,
      layout_strategy = "horizontal",
      -- layout_config = {
      --   width = 0.75,
      --   preview_cutoff = 120,
      --   horizontal = {
      --     preview_width = function(_, cols, _)
      --       if cols < 120 then
      --         return math.floor(cols * 0.5)
      --       end
      --       return math.floor(cols * 0.6)
      --     end,
      --     mirror = false,
      --   },
      --   vertical = { mirror = false },
      -- },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },
      ---@usage Mappings are fully customizable. Many familiar mapping patterns are setup as defaults.
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-c>"] = actions.close,
          ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<CR>"] = actions.select_default,
          ["<C-u>"] = actions.preview_scrolling_up,
          ["<C-d>"] = actions.preview_scrolling_down,
        },
        n = {
          ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<C-u>"] = actions.preview_scrolling_up,
          ["<C-d>"] = actions.preview_scrolling_down,

          ["?"] = actions.which_key,
        },
      },
      file_ignore_patterns = {"%.pyc", "%.css" ,"%.pdf", "%.xml", "%.xlsx", "%.xls", "%.docx", "%.zip", "%.rar", "%.jpg", "%.png", "%.svg", "%.webp", "node_modules","_cookie", "__init__.py", "%real_python", "%.json", "%.mp4", "%.ttf", "%.woff", "%.woff2", "%.otf" ,"%.min.js",},
      -- path_display = { "smart" },
      winblend = 0,
      border = {},
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      color_devicons = true,
      set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      },
    },
})

require("telescope").load_extension("fzf")


local M = {}

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim/",
    })
end
M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', '<c-d>', actions.git_delete_branch)
            map('i', '<c-a>', actions.git_create_branch)
            map('n', '<c-a>', actions.git_create_branch)
            return true
        end
    })
end

return M

-- -- Set Backgrounds
-- function set_background(content)
--     vim.fn.system(
--         "gsettings set org.gnome.desktop.background picture-uri file://".. content)
-- end

-- local function select_background(prompt_bufnr, map)
--     local function set_the_background(close)
--         local content =
--         require('telescope.actions.state').get_selected_entry(prompt_bufnr)
--         set_background(content.cwd .. "/" .. content.value)
--         if close then
--             require('telescope.actions').close(prompt_bufnr)
--         end
--     end

--     map('i', '<C-p>', function()
--         set_the_background()
--     end)

--     map('i', '<CR>', function()
--         set_the_background(true)
--     end)
-- end

-- local function image_selector(prompt, cwd)
--     return function()
--         require("telescope.builtin").find_files({
--             prompt_title = prompt,
--             cwd = cwd,

--             attach_mappings = function(prompt_bufnr, map)
--                 select_background(prompt_bufnr, map)

--                 -- Please continue mapping (attaching additional key maps):
--                 -- Ctrl+n/p to move up and down the list.
--                 return true
--             end
--         })
--     end
-- end

-- M.anime_selector = image_selector("< Awesome! backgrounds > ", "~/Backgrounds")
