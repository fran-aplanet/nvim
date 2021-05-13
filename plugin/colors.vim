let g:franjf_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:franjf_colorscheme])
    else
        " TODO: What the way to use g:franjf_colorscheme
        colorscheme gruvbox
    endif

    hi ColorColumn ctermbg=0 guibg=grey
    hi LineNr guifg=#5eacd3
    hi netrwDir guifg=#5eacd3
    hi qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    hi Normal guibg=None
endfun

nnoremap <leader>ta :call ColorMyPencils()<CR>
nnoremap <leader>th :let g:franjf_colorscheme =

call ColorMyPencils()
