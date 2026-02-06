local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()

local servers = {
  "lua_ls",
  "pyright",
  "jsonls",
  "ts_ls",
}

mason_lspconfig.setup({
  ensure_installed = servers,
  automatic_installation = true,
  handlers = {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
      })
    end,
  },
})

