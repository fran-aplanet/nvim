require'nvim-treesitter.configs'.setup {
    ensure_installed = {
      'bash',
      'html',
      'json',
      'lua',
      'python',
      'javascript',
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    }

}
