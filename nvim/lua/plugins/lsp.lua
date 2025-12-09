return {
  {
    'mason-org/mason.nvim',
    build = ':MasonUpdate',
    cmd = { 'Mason', 'MasonUpdate', 'MasonLog', 'MasonInstall', 'MasonUninstall', 'MasonUninstallAll' },
    config = true,
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    config = true,
    --[[ config = function()
      require('mason').setup({})

      local mason_lspconfig = require('mason-lspconfig')
      mason_lspconfig.setup_handlers({
        function(server_name)
          vim.lsp.enable({server_name})
        end
      })

      require('lspconfig').nushell.setup{}
    end,
    ]]
  },
}
