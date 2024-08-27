--[[
Options are automatically loaded before lazy.nvim startup
Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
Add any additional options here
--]]

local opt = vim.o
opt.tabstop = 4 -- Number of spaces tabs count for
-- opt.expandtab = true
opt.softtabstop = 4
opt.shiftwidth = 4

opt = vim.opt
opt.winbar = "%=%m %f" -- Window format filename for splits

table.insert(opt.spelllang, "ru")

-- Language mapping
local function escape(str)
	-- You need to escape these characters to work correctly
	local escape_chars = [[;,."|\]]
	return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

opt.langmap = vim.fn.join({
	-- | `to` should be first     | `from` should be second
	escape(ru_shift)
		.. ";"
		.. escape(en_shift),
	escape(ru) .. ";" .. escape(en),
}, ",")
