return {
  -- Color Scheme:
  -- {
  --   "echasnovski/mini.base16",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("mini.base16").setup({
  --       palette = {
  --         base00 = "#292a2f", -- background
  --         base01 = "#303238", -- black
  --         base02 = "#3f424a",
  --         base03 = "#7e8892", -- bright black / comments
  --         base04 = "#b9bec4",
  --         base05 = "#fcfcfd", -- foreground
  --         base06 = "#f7f7f8",
  --         base07 = "#ffffff",
  --         base08 = "#ee8675", -- red
  --         base09 = "#f5a85d", -- orange
  --         base0A = "#ffd044", -- yellow
  --         base0B = "#aad47f", -- green
  --         base0C = "#9acfc3", -- cyan
  --         base0D = "#325890", -- blue
  --         base0E = "#f082b1", -- magenta
  --         base0F = "#b47d5f",
  --       },
  --     })
  --   end,
  -- },

  -- Show open buffers in the tabline.
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        always_show_bufferline = false,
        numbers = "ordinal",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
    keys = {
      { "<leader>1", function() require("bufferline").go_to(1, true) end },
      { "<leader>2", function() require("bufferline").go_to(2, true) end },
      { "<leader>3", function() require("bufferline").go_to(3, true) end },
      { "<leader>4", function() require("bufferline").go_to(4, true) end },
      { "<leader>5", function() require("bufferline").go_to(5, true) end },
      { "<leader>6", function() require("bufferline").go_to(6, true) end },
      { "<leader>7", function() require("bufferline").go_to(7, true) end },
      { "<leader>8", function() require("bufferline").go_to(8, true) end },
      { "<leader>9", function() require("bufferline").go_to(9, true) end },
      { "<leader>0", function() require("bufferline").go_to(10, true) end },
    },
  },

    -- Statusline:
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        globalstatus = true,
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "filetype" },
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },
}
