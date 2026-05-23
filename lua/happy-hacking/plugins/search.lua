return {
  -- Fuzzy-find files, buffers, and text:
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader><leader>", "<cmd>FzfLua files<cr>" },
    },
    opts = {},
  },
}
