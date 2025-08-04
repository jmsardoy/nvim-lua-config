local ts_configs = require("nvim-treesitter.configs")

ts_configs.setup({
  ensure_installed = { "bash", "c", "cmake", "javascript", "html", "json", "lua", "python", "typescript", "tsx", "css", "rust", "java", "yaml", "markdown", "markdown_inline", "vimdoc" }, -- one of "all" or a list of languages
	ignore_install = {}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = {} },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
})
