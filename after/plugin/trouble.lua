local tr = require('trouble')
local opts = {
  mode = "diagnostics",
  focus = true
}
vim.keymap.set("n", "<leader>tt", function() tr.toggle(opts) end)
vim.keymap.set("n", "[d", function() tr.next(opts) end)
vim.keymap.set("n", "]d", function() tr.prev(opts) end)
