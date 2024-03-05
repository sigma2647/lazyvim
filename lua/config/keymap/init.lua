require("keymap.helpers")
local bind = require("config.keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
  -- Package manager: lazy.nvim
  -- ["n|<leader>px"] = map_cr("Lazy clean"):with_silent():with_noremap():with_nowait():with_desc("package: Clean"),
}

bind.nvim_load_mapping(plug_map)

-- Plugin keymaps
-- require("keymap.completion")
-- require("keymap.editor")
-- require("keymap.lang")
-- require("keymap.tool")
-- require("keymap.ui")

-- User keymaps
local ok, mappings = pcall(require, "user.keymap.init")
if ok then
  require("modules.utils.keymap").replace(mappings)
end
