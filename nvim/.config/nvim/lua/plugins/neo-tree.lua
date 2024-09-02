return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      sort_case_sensitive = false,
      filesystem = {
        filtered_items = {
          visible = false,
          show_hidden_count = true,
          hide_by_name = {},
          always_show = {
            ".env",
            ".config",
          },
        }
      }
    })

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end
}
