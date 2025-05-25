return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      htmlangular = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },
      svelte = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--single-attribute-per-line", "--bracket-same-line", "--arrow-parens=avoid" },
      },
    },
  },
}
