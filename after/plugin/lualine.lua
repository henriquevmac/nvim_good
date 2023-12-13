require('lualine').setup {
    options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '|',
        icons_enabled = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
            {'filename', file_status = true, path = 1},
            {'diagnostics', sources = {'nvim_lsp'}},
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },
}
