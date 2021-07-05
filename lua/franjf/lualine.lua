-- local custom_theme = require('lualine.themes.ayu_dark')
local custom_theme = require('lualine.themes.horizon')
custom_theme.normal.c.bg = none
custom_theme.insert.c.bg = none
custom_theme.visual.c.bg = none
custom_theme.replace.c.bg = none

-- Icons    
require('lualine').setup{
options = {
  theme = custom_theme,
  -- section_separators = {'', ''},
  section_separators = {'', ''},
  component_separators = {'', ''},
  icons_enabled = true,
},
sections = {
  lualine_a = { {'mode', upper = true} },
  lualine_b = { {'branch', icon = ' '} },
  lualine_c = { {'filename', file_status = true}},
  lualine_x = { 'filetype' },
},
inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {'filename'},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
}
}
