require('formatter').setup({
  filetype = {
    python = {
      function()
        return {
          exe = "black",
          args = {"--quiet -",},
          stdin = true
        }
      end
    },
  }
})
