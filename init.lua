--[[ init.lua ]]
--https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
--https://mattermost.com/blog/turning-neovim-into-a-full-fledged-code-editor-with-lua/

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('filetype')  -- Filetypes

-- Run :PackerInstall for new plugins
-- PLUGINS: Add this section
require('nvim-tree').setup{}

require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

require('nvim-autopairs').setup{}
