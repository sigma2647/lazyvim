if vim.g.vscode then
    require("vscode.vs-option")
else
    require("config.lazy")
    require("config.setting")
end
