local tr = require('trouble')
vim.keymap.set("n", "<leader>tt", function() tr.toggle() end)
vim.keymap.set("n", "[d", function() tr.next() end)
vim.keymap.set("n", "]d", function() tr.previous() end)
