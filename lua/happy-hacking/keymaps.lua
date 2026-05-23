local map = vim.keymap.set

-- Clear search highlighting:
map("n", "<C-l>", "<cmd>nohlsearch<cr><C-l>")

-- Move by display line unless a count is given:
map({ "n", "x" }, "j", function()
  return vim.v.count == 0 and "gj" or "j"
end, { expr = true, silent = true })

map({ "n", "x" }, "k", function()
  return vim.v.count == 0 and "gk" or "k"
end, { expr = true, silent = true })

-- Editing shortcuts:
map("n", "<cr>", "o<esc>")
map("n", "q:", ":q")
map("n", "<leader>m", "<cmd>silent make<cr>")
map("n", "<leader>q", "<cmd>bdelete<cr>")
map("n", "<leader>sv", function()
  local session = vim.fn.stdpath("state") .. "/reload-session.vim"
  vim.cmd.mksession({ args = { session }, bang = true })
  local command = string.format(
    "restart lua vim.cmd.source(%q); vim.notify(%q)",
    session,
    "Reloaded config"
  )
  vim.cmd(command)
end)

-- Git Diff:
map("n", "<leader>g", function()
  local file = vim.fn.expand("%")

  if file == "" then
    vim.notify("No file for git diff", vim.log.levels.WARN)
    return
  end

  vim.cmd.vsplit()
  vim.cmd.terminal({ "git", "diff", "--", file })
  vim.bo.buflisted = false
end)

-- Split windows:
local function move_or_split(direction)
  local current = vim.api.nvim_get_current_win()
  vim.cmd.wincmd(direction)

  if current ~= vim.api.nvim_get_current_win() then
    return
  end

  if direction == "h" or direction == "l" then
    vim.cmd.vsplit()
  else
    vim.cmd.split()
  end

  vim.cmd.wincmd(direction)
end

for _, direction in ipairs({ "h", "j", "k", "l" }) do
  map("n", "<leader>" .. direction, function()
    move_or_split(direction)
  end)
end

-- Resize windows:
map("n", "<leader>H", "<cmd>vertical resize -5<cr>")
map("n", "<leader>J", "<cmd>resize +5<cr>")
map("n", "<leader>K", "<cmd>resize -5<cr>")
map("n", "<leader>L", "<cmd>vertical resize +5<cr>")
