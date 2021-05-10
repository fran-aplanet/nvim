if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
colorscheme gruvbox
hi ColorColumn ctermbg=0 guibg=grey
hi LineNr guifg=#5eacd3
hi netrwDir guifg=#5eacd3
hi qfFileName guifg=#aed75f
hi TelescopeBorder guifg=#5eacd
hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi Normal guibg=None
