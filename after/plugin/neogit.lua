local neogit = require('neogit')

vim.keymap.set("n", "<leader>pg", function() neogit.open() end)
