local Remap = require("core.opts")
local nnoremap = Remap.nnoremap
local opt = { noremap = true }

nnoremap("<leader>y", '"+y')

nnoremap("<leader>ps", function()
	require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ") })
end)

nnoremap("<Leader>pf", function()
	require("telescope.builtin").find_files()
end)

nnoremap("<leader>pw", function()
	require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
end)

nnoremap("<leader>a", function()
	require("harpoon.mark").add_file()
end, silent)
nnoremap("<C-e>", function()
	require("harpoon.ui").toggle_quick_menu()
end, silent)

nnoremap("<C-h>", function()
	require("harpoon.ui").nav_file(1)
end, silent)
nnoremap("<C-t>", function()
	require("harpoon.ui").nav_file(2)
end, silent)
nnoremap("<C-n>", function()
	require("harpoon.ui").nav_file(3)
end, silent)
nnoremap("<C-s>", function()
	require("harpoon.ui").nav_file(4)
end, silent)
--map('n', '<leader>a', ':lua require("harpoon.mark").add_file()', opt)
-- map('n', '<C-e>', ':lua require("harpoon.ui").toggle_quick_menu()', opt)
-- map('n', '<leader>', ':WhichKey "<Space>" <CR>', opt)
-- map('n', '<leader>pf', ':Telescope find_files<CR>', opt)
-- map('n', '<leader>f', ':NvimTreeToggle<CR>', opt)
