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