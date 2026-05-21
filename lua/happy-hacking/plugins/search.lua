return {
  -- Fuzzy-find files, buffers, and text:
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader><leader>", "<cmd>Telescope find_files<cr>" },
    },
    opts = {},
  },
}
