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
  {
  "arnaupv/nvim-devcontainer-cli",
  opts = {
    -- By default, if no extra config is added, following nvim_dotfiles are
    -- installed: "https://github.com/LazyVim/starter"
    -- This is an example for configuring other nvim_dotfiles inside the docker container
    --nvim_dotfiles_repo = "https://github.com/arnaupv/dotfiles.git",
    --nvim_dotfiles_install_command = "cd ~/nvim_dotfiles/ && ./install.sh",
    -- In case you want to change the way the devenvironment is setup, you can also provide your own setup
    --setup_environment_repo = "https://github.com/arnaupv/setup-environment",
    --setup_environment_install_command = "./install.sh -p 'nvim stow zsh'",
  },
  keys = {
    -- stylua: ignore
    {
      "<leader>cdu",
      ":DevcontainerUp<cr>",
      desc = "Up the DevContainer",
    },
    {
      "<leader>cdc",
      ":DevcontainerConnect<cr>",
      desc = "Connect to DevContainer",
    },
  }
},
}
