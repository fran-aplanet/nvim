local custom_theme = require('lualine.themes.ayu_dark')
custom_theme.normal.c.bg = none

require('lualine').setup{
options = {
  theme = custom_theme,
  section_separators = {'', ''},
  component_separators = {'', ''},
  icons_enabled = true,
},
sections = {
  lualine_a = { {'mode', upper = true} },
  lualine_b = { {'branch', icon = ''} },
  lualine_c = { {'filename', file_status = true} },
  lualine_x = { 'filetype' },
},
}
