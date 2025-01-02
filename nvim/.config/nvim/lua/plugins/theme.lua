return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local vscode = require('vscode');

    vscode.setup({
      transparent = false;
      italic_comments = false;
    });

    vscode.load();
  end
}
