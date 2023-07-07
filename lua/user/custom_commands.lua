-- Shorten function name
local create_command = vim.api.nvim_create_user_command

local function set_abbreviation(from, to)
  vim.cmd("abb "..from.." "..to)
end

-- Fix quit typos --
set_abbreviation("W!", "w!")
set_abbreviation("W!", "w!")
set_abbreviation("Q!", "q!")
set_abbreviation("Qall!", "qall")
set_abbreviation("Wq", "wq")
set_abbreviation("Wa", "wa")
set_abbreviation("wQ", "wq")
set_abbreviation("WQ", "wq")
set_abbreviation("W", "w")
set_abbreviation("Q", "q")
set_abbreviation("Qall", "qall")

-- Format command
-- create_command("Format", "lua vim.lsp.buf.format()", {})
-- set_abbreviation("format", "Format")

-- Global defined functions in toggle term
set_abbreviation("htop", "lua _HTOP_TOGGLE()")
set_abbreviation("python", "lua _PYTHON_TOGGLE()")
set_abbreviation("ipython", "lua _IPYTHON_TOGGLE()")
set_abbreviation("ncdu", "lua _NCDU_TOGGLE()")
