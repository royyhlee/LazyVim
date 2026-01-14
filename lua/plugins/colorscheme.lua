return {
  -- lua/plugins/rose-pine.lua
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false, -- Disable italic text
      },
    },
  },

  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        groups = {
          all = {
            CursorLine = { bg = "none" }, -- Disable background for CursorLine
          },
        },
      })
    end,
  },

  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "soft",
        italics = false,
      })
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    "rebelot/kanagawa.nvim",
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },

  {
    "miikanissi/modus-themes.nvim",
    config = function()
      require("modus-themes").setup({
        style = "modus_operandi", -- modus_vivendi, modus_operandi
        variant = "tritanopia", -- deuteranopia, tinted, tritanopia
        on_colors = function(colors)
          colors.bg_main = "#eeeeee"
          colors.bg_dim = "#d4d4d4"
          colors.fg_main = "#262626"
        end,
      })
    end,
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        borderless_pickers = true,
        colors = {
          bg = "#000000",
        },
        overrides = {
          CursorLine = { bg = "#1e1e1e" },
        },
      })
    end,
  },

  {
    "hyperb1iss/silkcircuit-nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "folke/snacks.nvim" },
    opts = {
      variant = "vibrant",
      -- NOTE: Below doesn't work; Using autocmd in config instead
      -- on_highlights = function(highlights, colors)
      --   highlights.WinSeparator = { fg = "#ffffff" }
      --   highlights.VertSplit = { fg = "#FFFFFF" }
      -- end,
    },
    config = function(_, opts)
      require("silkcircuit").setup(opts)

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "silkcircuit",
        callback = function()
          vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#b366ff" })
        end,
      })

    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine-dawn",
      -- colorscheme = "modus",
      -- colorscheme = "carbonfox",
      colorscheme = "silkcircuit",
    },
  },
}
