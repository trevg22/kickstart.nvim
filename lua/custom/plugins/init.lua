-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {

    'NeogitOrg/neogit',

    dependencies = {

      'nvim-lua/plenary.nvim', -- required

      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      --
      'nvim-telescope/telescope.nvim', -- optional
      --
      --         "ibhagwan/fzf-lua",              -- optional
      --
    },
    config = true,
  },
}
