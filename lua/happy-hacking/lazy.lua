local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
  require("happy-hacking.plugins.editing"),
  require("happy-hacking.plugins.formatting"),
  require("happy-hacking.plugins.git"),
  require("happy-hacking.plugins.lsp"),
  require("happy-hacking.plugins.search"),
  require("happy-hacking.plugins.ui"),
})
