-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--
local opt = { noremap = true, silent = true }
local bind = require("config.keymap.bind")
local utils = require("config.utils")

local nmap = utils.nmap
local vmap = utils.vmap
local imap = utils.imap
local xmap = utils.xmap
local omap = utils.omap
local tmap = utils.tmap
local cmap = utils.cmap
local map_callback = bind.map_callback
local nnoremap = utils.nnoremap
local inoremap = utils.inoremap
local vnoremap = utils.vnoremap

nmap("Q", "<cmd>q<CR>", opt)
nmap("S", "<cmd>w<CR>", opt)
nmap("H", "^", opt)
nmap("L", "$", opt)
nmap("Y", "y$", opt)
nmap("D", "d$", opt)
nmap("<c-w>", "<cmd>bd<CR>", opt)

nmap("<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opt)
nmap("<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opt)
nmap("<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opt)
nmap("<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opt)
nmap("<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opt)

imap(";", "<esc>", opt)
imap("<c-f>", "<Right>", opt)
imap("<c-b>", "<Left>", opt)
imap("<c-a>", "<Home>", opt)
imap("<c-e>", "<End>", opt)
vmap("H", "^", opt)
vmap("L", "$", opt)

nmap("<c-;>", "<cmd>silent !open 'obsidian://open?vault=markdown&file=%:r'<CR>", opt)
nmap("<Leader>ob", "<cmd>silent !open 'obsidian://open?vault=markdown&file=%:r'<CR>", opt)

nnoremap("<TAB>", "<cmd>bnext<cr>")
nnoremap("<S-TAB>", "<cmd>bNext<cr>")

cmap("<c-f>", "<Right>", opt)
--------------------------------------------------------------------------------
-- Leader Mappings -------------------------------------------------------------
--------------------------------------------------------------------------------
nmap("<Leader>fk", "<cmd>Telescope keymaps<CR>", opt)
nmap("<Leader>fh", "<cmd>Telescope help_tags<CR>", opt)

local lazyterm = function()
  require("lazyvim.util").terminal.open(nil, { cwd = require("lazyvim.util").root.get() })
end
local lazyterm = function()
  require("lazyvim.util").terminal.open(nil, { cwd = vim.fn.expand("%:p:h") })
end

nmap("<c-\\>", lazyterm, { desc = "Terminal (root dir)" })
tmap("<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- ┌────────────────┐
-- │ tmux-navigator │
-- └────────────────┘
nmap("<C-h>", "<cmd>TmuxNavigateLeft<cr>", opt)
nmap("<C-l>", "<cmd>TmuxNavigateRight<cr>", opt)
nmap("<C-k>", "<cmd>TmuxNavigateUp<cr>", opt)
nmap("<C-j>", "<cmd>TmuxNavigateDown<cr>", opt)
