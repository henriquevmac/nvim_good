vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>P", ":r !wl-paste<CR>")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "]q", "<CMD>cnext<CR>", { desc = "Next quickfix" })
vim.keymap.set("n", "[q", "<CMD>cprev<CR>", { desc = "Previous quickfix" })

vim.keymap.set("v", "<leader><C-s>", function ()
    local sPos = vim.fn.getpos("'<")
    local ePos = vim.fn.getpos("'>")

    local sLine = sPos[2]
    local eLine = ePos[2]
    local lines = vim.fn.getline(sLine, eLine)

    local selectedText = table.concat(lines, "\n")

    vim.fn.system('echo "' .. selectedText .. '" | xargs -I{} xdg-open "{}"')
end, { noremap = true, silent = true })
