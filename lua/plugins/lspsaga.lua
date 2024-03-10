return {

  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = true,
        show_file = true,
        color_mode = true,
        delay = 100,

        hide_keyword = true,
        folder_level = 0,
      },
      lightbulb = {
        sign = false,
      },
      outline = {
        layout = "float",
      },
    })
  end,
}
