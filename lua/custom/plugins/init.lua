-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-orgmode/telescope-orgmode.nvim',
      'nvim-orgmode/org-bullets.nvim',
      'Saghen/blink.cmp',
    },
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      require('orgmode').setup {
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      }
      require('org-bullets').setup()
      require('blink.cmp').setup {
        sources = {
          per_filetype = {
            org = { 'orgmode' },
          },
          providers = {
            orgmode = {
              name = 'Orgmode',
              module = 'orgmode.org.autocompletion.blink',
              fallbacks = { 'buffer' },
            },
          },
        },
      }

      require('telescope').setup()
      require('telescope').load_extension 'orgmode'
      vim.keymap.set('n', '<leader>r', require('telescope').extensions.orgmode.refile_heading)
      vim.keymap.set('n', '<leader>fh', require('telescope').extensions.orgmode.search_headings)
      vim.keymap.set('n', '<leader>li', require('telescope').extensions.orgmode.insert_link)
    end,
  },
}
