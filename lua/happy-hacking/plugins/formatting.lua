return {
  -- Run external formatters directly or on save:
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        cuda = { "clang_format" },
        python = { "ruff_fix", "ruff_format" },
      },
    },
  },
}
