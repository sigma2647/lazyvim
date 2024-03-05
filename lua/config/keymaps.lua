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

nmap("<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opt)
nmap("<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opt)
nmap("<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opt)
nmap("<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opt)
nmap("<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opt)

imap(";", "<esc>", opt)
imap("<c-f>", "<Right>", opt)

nnoremap("<TAB>", "<cmd>bnext<cr>")
nnoremap("<S-TAB>", "<cmd>bNext<cr>")

--------------------------------------------------------------------------------
-- Leader Mappings -------------------------------------------------------------
--------------------------------------------------------------------------------
--
--
--
