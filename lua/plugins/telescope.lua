return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {}
            }
        }
        require('telescope').load_extension('fzf')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
        -- vim.keymap.set('n', '<leader>ps', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        vim.keymap.set('n', '<leader>pb', builtin.treesitter, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>pm', builtin.man_pages, {})
        vim.keymap.set('n', '<leader>vs', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>gc', builtin.git_branches, {})
        vim.keymap.set('n', '<leader>ec', builtin.colorscheme, {})
    end
}
