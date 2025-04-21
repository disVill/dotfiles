return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'nu', 'fish', 'rust', 'git_config', 'git_rebase', 'gitcommit' },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
}
