-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.plugins = {
    {
		"shellRaining/hlchunk.nvim",
			event = { "BufReadPost", "BufReadPre" },
				config = function()
					require('hlchunk').setup {
						chunk = {
						enable = true,
						use_treesitter = true,
						notify = true,
				priority = 5,
				style={
					{ fg = "#FF0000" },
					{ fg = "#FF7F00" },
					{ fg = "#FFFF00" },
					{ fg = "#00FF00" },
					{ fg = "#0000FF" },
					{ fg = "#4B0082" },
					{ fg = "#8F00FF" },
							},
					delay=300
				},
						indent = {
						enable = true,
						},
						line_num = {
						enable = true,
						},
						blank = {
						enable = true,
				},
			}
		end
	}
}

M.ui = {
	theme = "chadracula",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
