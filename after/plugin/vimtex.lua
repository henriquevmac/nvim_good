-- vimtex configuration
vim.g.vimtex_syntax_enabled = 1

vim.g.vimtex_compile_on_save = 1

-- Use latexmk for compilation
vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    options = {'-pdf', '-interaction=nonstopmode', '-synctex=1'},
}

-- Set PDF viewer (e.g., Zathura)
vim.g.vimtex_view_general_viewer = 'evince'

