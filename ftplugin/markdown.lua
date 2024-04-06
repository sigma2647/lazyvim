local map = vim.api.nvim_buf_set_keymap
-- local opt = {noremap = true, silent = true }
-- map(0, 'n', '<C-a>', '<CMD>echo "hi"<CR>', {noremap = false, silent = false })   -- execute cell
--vim.cmd([[set ft=vimwiki]])

local map = vim.api.nvim_buf_set_keymap
-- local opt = {noremap = true, silent = true }

map(0, "n", "<C-c><C-c>", "<CMD>IPythonCellExecuteCell<CR>", { noremap = false, silent = false }) -- execute cell
map(0, "n", "<C-[>", "<CMD>VimwikiDiaryPrevDay<CR>", { noremap = true, silent = false }) -- execute cell
map(0, "n", "<C-]>", "<CMD>VimwikiDiaryNextDay<CR>", { noremap = true, silent = false }) -- execute cell
map(0, "n", "<C-]>", "<CMD>VimwikiDiaryNextDay<CR>", { noremap = true, silent = false }) -- execute cell

vim.o.number = false
vim.o.relativenumber = false
