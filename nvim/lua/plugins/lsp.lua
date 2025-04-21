return {
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('mason').setup({})

      local mason_lspconfig = require('mason-lspconfig')
      mason_lspconfig.setup({})
      mason_lspconfig.setup_handlers({
        function(server_name)
          require('lspconfig')[server_name].setup {}
        end
      })

      require('lspconfig').nushell.setup{}
    end,
  },
}
