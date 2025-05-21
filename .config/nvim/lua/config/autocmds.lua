local function augroup(name)
  return vim.api.nvim_create_augroup("MyAutoCmds_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})


vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown", "javascript", "typescript", "typescriptreact","javascriptreact", "html", },
  callback = function()
    vim.opt_local.wrap = true
  end,
})
