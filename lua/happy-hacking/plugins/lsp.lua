return {
  -- Install and manage language servers and tooling:
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  -- Configure Neovim's built-in LSP client: 
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-org/mason.nvim" },
    config = function()
      vim.diagnostic.config({
        severity_sort = true,
        signs = true,
        virtual_text = { source = "if_many" },
      })

      local servers = {
        "clangd",
        "lua_ls",
        "ruff",
        "ty",
        "texlab",
      }

      vim.lsp.config("ty", {
        settings = {
          ty = {
            completions = {
              autoImport = false,
            },
          },
        },
      })

      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end
    end,
  },
  -- Completion engine for LSP, paths, and buffers:
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = { preset = "super-tab" },
      sources = {
        default = { "path", "lsp", "buffer" },
      },
    },
  },
}
