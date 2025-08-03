local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  vim.notify("Failed to load null-ls")
  return
end
local eslint_d_status_ok, eslint_d = pcall(require, "none-ls.diagnostics.eslint_d")
if not eslint_d_status_ok then
  vim.notify("Failed to load none-ls eslint_d")
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = true,
  sources = {
    -- python
    -- formatting.isort,
    diagnostics.mypy,

    -- typescript
    formatting.prettierd,
    eslint_d,

    -- lua
    formatting.stylua,
  },
})
