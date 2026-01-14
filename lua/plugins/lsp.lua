return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.setup = {
      ["*"] = function(client, _)
        -- Guard: some clients may not have server_capabilities yet
        if client.server_capabilities then
          client.server_capabilities.semanticTokensProvider = nil
        end
      end,
    }
  end,
}
