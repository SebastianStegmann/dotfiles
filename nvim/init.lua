require('settings')


local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
--    :Lazy
--    :Lazy update

require('lazy').setup({

    'tpope/vim-sleuth',
    require("plugins.harpoon"),
    require("plugins.oil"),
    require("plugins.gitsigns"),
    require("plugins.which-key"),
    require("plugins.nvim-lspconfig"),
    require("plugins.conform"),
    require("plugins.nvim-cmp"),
    require("plugins.todo-comments"),
    require("plugins.mini"),
    require("plugins.nvim-treesitter"),
    {
      'miikanissi/modus-themes.nvim',
      priority = 1000,
      init = function()
        vim.cmd.colorscheme 'modus_vivendi'
        -- vim.cmd.hi 'Comment gui=none'
      end,
    },
  },
  {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  })
