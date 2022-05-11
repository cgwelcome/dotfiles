vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

require("plugins")
require("nvim-tree").setup()
require("neogit").setup {
	kind = "split_above",
}
require('gitsigns').setup()
require("lualine").setup {
	options = { theme = "ayu_mirage" }
}
require("telescope").load_extension('fzf')
require("mini.cursorword").setup()
require("mini.surround").setup()
require("mini.comment").setup()
require("mini.trailspace").setup()

vim.api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no")
vim.api.nvim_command("autocmd BufNewFile,BufFilePre,BufRead *.asm setlocal filetype=nasm")
vim.api.nvim_command("autocmd FileType python setlocal expandtab")
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
