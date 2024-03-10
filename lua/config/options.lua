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
  mouse = "a",
  cmdheight = 1, -- Number of screen line
  termguicolors = true, -- Terminal color
  number = true, -- Number
  showtabline = 0,
  hidden = true,
  fileencoding = "utf-8",
  showmode = false, -- show vim botton mode
  backup = false, -- no backup file
  writebackup = false, -- no backup file
  clipboard = "unnamedplus", -- clipboard
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
  ignorecase = true, -- ignorecase also in cmd mode auto complete
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
