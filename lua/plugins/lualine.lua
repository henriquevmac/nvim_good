return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'lewis6991/gitsigns.nvim'
    },
    config = function()
        require('lualine').setup {
            options = {
                theme = 'auto',
                section_separators = '',
                component_separators = '|',
                icons_enabled = true,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch' },
                lualine_c = {
                    { 'filename',    file_status = true,      path = 1 },
                    { 'diagnostics', sources = { 'nvim_lsp' } },
                },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
        }
        require('nvim-web-devicons').setup {
            color_icons = true,
            default = true,
        }
    end
}
