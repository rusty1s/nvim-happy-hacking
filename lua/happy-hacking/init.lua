local M = {}

function M.setup()
  require("happy-hacking.options")
  require("happy-hacking.keymaps")
  require("happy-hacking.autocmds")
  require("happy-hacking.lazy")
end

return M
