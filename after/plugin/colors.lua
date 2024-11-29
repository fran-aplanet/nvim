-- vim.cmd("colorscheme tokyonight-night")
-- require("tokyonight").setup({
--     style = "night",
--     transparent = true,
-- })
-- require("rose-pine").setup({
--     variant = "main",
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
-- })
--
-- vim.cmd("colorscheme rose-pine-main")
require("tokyodark").setup({
    transparent_background = true,
})
vim.cmd("colorscheme tokyodark")

vim.cmd("autocmd VimEnter * hi ZenBg ctermbg=NONE guibg=NONE")
