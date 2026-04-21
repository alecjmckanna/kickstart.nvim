--[[
=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================
  Kickstart.nvim modular configuration

  This configuration is based on kickstart.nvim but has been refactored
  into modules for better organization and maintainability.

  Structure:
    - lua/config/options.lua    : Vim options and settings
    - lua/config/keymaps.lua    : General keybindings
    - lua/config/autocmds.lua   : Autocommands
    - lua/config/lazy.lua       : Plugin manager setup and plugin specs
    - lua/kickstart/plugins/    : Optional kickstart plugins
    - lua/custom/plugins/       : Your custom plugins

  Original single-file config backed up to: init.lua.backup
=====================================================================
=====================================================================
=====================================================================
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Load configuration modules
require('config.options')
require('config.keymaps')
require('config.autocmds')
require('config.lazy')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
