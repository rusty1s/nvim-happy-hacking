return {
  -- Reload unchanged buffers when files change on disk.
  { "djoshea/vim-autoread" },
  -- Detect indentation settings from the current file.
  { "tpope/vim-sleuth" },
  -- Insert matching brackets, quotes, and pairs.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
}
