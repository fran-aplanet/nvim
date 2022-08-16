local options = {
    encoding       = "utf-8",
    hidden         = true,
    showmatch      = true,
    smartcase      = true,
    termguicolors  = true,
    visualbell     = true,
    swapfile       = false,
    backup         = false,
    signcolumn     = 'yes',
    autoread       = true,
    scrolloff      = 8,
    updatetime     = 50,
    showbreak      = '↳',
    cursorline     =  true,
    mouse          = '',
    -- Tab
    expandtab      = true,
    smartindent    = true,
    smarttab       = true,
    softtabstop    = 4,
    tabstop        = 4,
    shiftwidth     = 4,
    -- Search
    hlsearch       = false,
    incsearch      = true,
    splitright     = true,
    wildmode       = "full",
    diffopt        = 'filler,internal,algorithm:histogram,indent-heuristic',
    completeopt    = 'menuone,noinsert,noselect',
    -- Window option
    linebreak      = true,
    number         = true,
    relativenumber = true,
    wrap           = true,
    textwidth      = 0,
    -- New
    clipboard      = "unnamed"
}

local options_plugins = {
    netrw_banner               = 0,
    doge_doc_standard_python   = "google",
    neoformat_enabled_python   = {'black',},
}

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.path:append"**"

for k,v in pairs(options_plugins) do
    vim.g[k] = v
end
