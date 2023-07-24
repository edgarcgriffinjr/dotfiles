-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- keymaps for nvim tree
vim.keymap.set('n', '<leader>h', ':NvimTreeToggle<CR>')
-- empty setup using defaults
require("nvim-tree").setup({
	view = {
		adaptive_size = true
	}
})

