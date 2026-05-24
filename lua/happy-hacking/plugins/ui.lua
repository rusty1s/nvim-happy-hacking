local palette = {
  base00 = "#25262b", -- background
  base01 = "#25262b", -- black (normal)
  base02 = "#403f43", -- black (bright)
  base03 = "#87888f", -- comments (use normal white)
  base04 = "#87888f", -- muted foreground (use normal white)
  base05 = "#e7e9f3", -- foreground
  base06 = "#87888f", -- white (normal)
  base07 = "#e7e9f3", -- white (bright)
  base08 = "#e86664", -- red
  base09 = "#f0b947", -- orange (use yellow)
  base0A = "#f0b947", -- yellow
  base0B = "#78f8c0", -- green
  base0C = "#61d7fc", -- cyan
  base0D = "#8ea5d6", -- blue
  base0E = "#cb6393", -- magenta
  base0F = "#cb6393", -- brown (use magenta)
}

return {
  -- Color Scheme:
  {
    "echasnovski/mini.base16",
    lazy = false,
    priority = 1000,
    config = function()
      require("mini.base16").setup({ palette = palette })

      vim.api.nvim_set_hl(0, "Comment", { fg = palette.base03, italic = true })
      vim.api.nvim_set_hl(0, "Todo", { fg = palette.base07, bold = true })
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = palette.base0A })
      vim.api.nvim_set_hl(0, "Visual", { fg = palette.base00, bg = palette.base0D })
      vim.api.nvim_set_hl(0, "ColorColumn", { fg = palette.base00, bg = palette.base02 })

      -- Completion Menu:
      vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.base07, bg = palette.base02 })
      vim.api.nvim_set_hl(0, "PmenuSel", { fg = palette.base00, bg = palette.base0B })
      vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = palette.base0B, bg = palette.base02, bold = true })
      vim.api.nvim_set_hl(0, "PmenuThumb", { bg = palette.base06 })

      -- Syntax Highlighting:
      vim.api.nvim_set_hl(0, "Statement", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Include", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Exception", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Keyword", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Conditional", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Repeat", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Operator", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Symbol", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Label", { fg = palette.base0D })

      vim.api.nvim_set_hl(0, "Function", { fg = palette.base0B })
      vim.api.nvim_set_hl(0, "Structure", { fg = palette.base0B })
      vim.api.nvim_set_hl(0, "pythonBuiltin", { fg = palette.base0B })

      vim.api.nvim_set_hl(0, "Identifier", { fg = palette.base05 })

      vim.api.nvim_set_hl(0, "String", { fg = palette.base08 })
      vim.api.nvim_set_hl(0, "Constant", { fg = palette.base0E })
      vim.api.nvim_set_hl(0, "Number", { fg = palette.base0E })
      vim.api.nvim_set_hl(0, "Boolean", { fg = palette.base0E })
      vim.api.nvim_set_hl(0, "Special", { fg = palette.base0D })
      vim.api.nvim_set_hl(0, "Delimiter", { fg = palette.base05 })
      vim.api.nvim_set_hl(0, "pythonFStringDelimiter", { fg = palette.base0E })
    end,
  },

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
    opts = function()
      local theme = require("lualine.themes.auto")
      theme.normal.a = { fg = palette.base00, bg = palette.base05, gui = "bold" }
      theme.insert.a = { fg = palette.base00, bg = palette.base0B, gui = "bold" }
      theme.visual.a = { fg = palette.base00, bg = palette.base0D, gui = "bold" }
      theme.replace.a = { fg = palette.base00, bg = palette.base0A, gui = "bold" }
      theme.command.a = { fg = palette.base00, bg = palette.base0E, gui = "bold" }

      for _, mode in ipairs({ "normal", "insert", "visual", "replace", "command" }) do
        theme[mode].b = { fg = palette.base05, bg = palette.base00 }
      end

      return {
        options = {
          globalstatus = true,
          section_separators = "",
          component_separators = "",
          theme = theme,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = { "filetype" },
          lualine_y = {},
          lualine_z = { "location" },
        },
      }
    end,
  },
}
