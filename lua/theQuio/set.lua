local o = vim.opt

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight on yank',
    group = vim.api.nvim_create_augroup('kickstart_yank_highlight', { clear = true }),
    callback = function()
        vim.highlight.on_yank({ timeout = 70 })
    end,
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
    pattern = { "*.hl", "hypr*.conf" },
    callback = function(event)
        print(string.format("starting hyprls for %s", vim.inspect(event)))
        vim.lsp.start {
            name = "hyprlang",
            cmd = { "hyprls" },
            root_dir = vim.fn.getcwd(),
        }
    end
})

o.mouse = ""

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
