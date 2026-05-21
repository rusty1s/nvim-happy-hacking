local group = vim.api.nvim_create_augroup("happy_hacking", { clear = true })

-- Remove trailing whitespace and blank lines:
vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.cmd([[%s/\n\+\%$//e]])
    vim.fn.winrestview(view)
  end,
})
