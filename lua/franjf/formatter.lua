require('formatter').setup({
  filetype = {
    python = {
      function()
        return {
          exe = "black",
          args = { '-' },
          stdin = true,
        }
      end
    },
    javascript = {
      function()
        return {
          exe = "./node_modules/prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true,
        }
      end
    },
    json = {
      function()
        return {
          -- exe = "./node_modules/prettier",
          exe = "./node_modules/prettier/bin-prettier.js",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote"},
          stdin = true
        }
      end
    },
  }
})
