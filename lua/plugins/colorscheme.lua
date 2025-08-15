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
  },

  {
    "L-Colombo/oldschool.nvim",
    config = true,
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
        style = "modus_vivendi",
        -- style = "modus_operandi",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine-dawn",
      colorscheme = "modus",
    },
  },
}
