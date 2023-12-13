local o = vim.opt

vim.api.nvim_exec([[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=70})
  augroup END
]], false)

o.number = true
o.relativenumber = true

o.autoindent = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true

o.scrolloff = 10

o.showmode = false

o.termguicolors = true

o.hlsearch = false
o.incsearch = true
