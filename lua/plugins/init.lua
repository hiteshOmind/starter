return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nmac427/guess-indent.nvim",
    config = function() 
      require('guess-indent').setup{
        auto_cmd = true,  -- Set to false to disable automatic execution
        override_editorconfig = false, -- Set to true to override settings set by .editorconfig
        filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
          "netrw",
          "tutor",
        },
        buftype_exclude = {  -- A list of buffer types for which the auto command gets disabled
          "help",
          "nofile",
          "terminal",
          "prompt",
        },
      }
    end
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPost", "BufReadPre"},
    config = function()
    require("hlchunk").setup {
        chunk = {
          enable = true,
          notify = true,
          style = {
            { fg = "#01ffff" },
            { fg = "#FF7F00" },
            { fg = "#FFFF00" },
            { fg = "#00FF00" },
            { fg = "#0000FF" },
            { fg = "#4B0082" },
            { fg = "#8F00FF" },
          },
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
          },
          delay = 400,
          duration = 300
        },
        indent = {
          enable = false,
        },
        line_num = {
          enable = false,
        },
        blank = {
          enable = false,
        },
      }
    end,
  }
  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
