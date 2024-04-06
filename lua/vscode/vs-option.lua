vim.g.mapleader = " "

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

imap(";", "<esc>", opt)

nmap("Q", "<cmd>q<CR>", opt)
nmap("S", "<cmd>w<CR>", opt)
nmap("H", "^", opt)
nmap("L", "$", opt)
nmap("Y", "y$", opt)
nmap("D", "d$", opt)

vmap("H", "^", opt)
vmap("L", "$", opt)

nmap("<leader>1", "<cmd>workbench.action.toggleSidebarVisibility", opt)

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local fn = vim.fn
local env = vim.env

opt.wildmenu = true
g.tmux_navigator_no_mappings = 1
opt.wildignorecase = true -- wildignorecase

local settings = {
  whichwrap = "b,s,<,>,[,],h,l", -- 允许使用上下左右箭头移动光标
  clipboard = "unnamedplus", -- clipboard
  ignorecase = true, -- ignorecase also in cmd mode auto complete
  number = true, -- Number
  showtabline = 0,
  hidden = true,
  fileencoding = "utf-8",
  showmode = false, -- show vim botton mode
  backup = false, -- no backup file
  writebackup = false, -- no backup file
  scrolloff = 8,
  sidescrolloff = 8,
  wrap = false, -- 换行
  cursorline = true, -- 显示光标行
  signcolumn = "yes",
  updatetime = 100, -- 更新时间
  wildmenu = true, -- wildmenu
  wildignorecase = true, -- wildignorecase
  relativenumber = true, -- relative number
  incsearch = true, -- incsearch
  autoindent = true, -- autoindent
  tabstop = 4, -- tabstop
  softtabstop = 4, -- softtabstop
  expandtab = true, -- expandtab
  smarttab = true, -- smarttab
  smartindent = true, -- smartindent
  shiftwidth = 4, -- shiftwidth
  fillchars = "eob: ",
  splitbelow = true, -- splitbelow
  splitright = true, -- splitright
  --guifont = 'MesloLGS NF:h14'  -- font
}

for k, v in pairs(settings) do
  vim.opt[k] = v
end
