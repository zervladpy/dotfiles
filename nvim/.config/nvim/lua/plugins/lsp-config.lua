return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        PATH = "prepend",
      })
    end,
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "jdtls",
          "lemminx",
          "pyright",
          "ts_ls",
          "intelephense",
          "html",
          "cssls",
          "tailwindcss",
          "ast_grep",
          "dockerls",
          "yamlls",
          "biome"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      -- LUA
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- JAVA
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })
      lspconfig.lemminx.setup({
        capabilities = capabilities,
      })

      -- PYTHON
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- WEB
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.intelephense.setup({
        capabilities = capabilities,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })

      -- DART
      lspconfig.ast_grep.setup({
        capabilities = capabilities,
      })

      -- DOCKER
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })

      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      -- JSON
      lspconfig.biome.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
