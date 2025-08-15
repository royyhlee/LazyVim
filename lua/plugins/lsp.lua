return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.setup = {
      ["*"] = function(_, _)
        -- Disable lsp highlighting
        require("lazyvim.util").lsp.on_attach(function(client)
          client.server_capabilities.semanticTokensProvider = nil
        end)
      end,
    }
  end
}
