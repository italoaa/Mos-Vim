--8888888b.                   888
--888   Y88b                  888
--888    888                  888
--888   d88P 8888b.   .d8888b 888  888  .d88b.  888d888
--8888888P"     "88b d88P"    888 .88P d8P  Y8b 888P"
--888       .d888888 888      888888K  88888888 888
--888       888  888 Y88b.    888 "88b Y8b.     888
--888       "Y888888  "Y8888P 888  888  "Y8888  888
--

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


local Packer_Status, Packer = pcall(require,"packer")
if not Packer_Status then
    return
end


Packer.init {
  ensure_dependencies   = true, -- Should packer install plugin dependencies?
  plugin_package = 'packer', -- The default package for plugins
  max_jobs = nil, -- Limit the number of simultaneous jobs. nil means no limit
  compile_on_sync = true, -- During sync(), run packer.compile()
  transitive_opt = true, -- Make dependencies of opt plugins also opt by default
  transitive_disable = true, -- Automatically disable dependencies of disabled plugins
  auto_reload_compiled = true, -- Automatically reload the compiled file after creating it.
  git = {
    cmd = 'git', -- The base command for git operations
    clone_timeout = 500, -- Timeout, in seconds, for git clones
  },
  display = {
--    open_fn  = function() return require'packer.util'.float() end,
--    An optional function to open a window for packer's display
    prompt_border = 'single', -- Border style of prompt popups.
    keybindings = { -- Keybindings for the display window
      quit = 'q',
      toggle_info = '<CR>',
      diff = 'd',
      prompt_revert = 'r',
    }
  },
}


return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter",
            run = ':TSUpdate',
            config = function() require('SpellBook.Packer-Spells.TreeSitter') end
        }

    -- ColorSchemes
    use {'christianchiarulli/nvcode-color-schemes.vim'}

    -- Lsp
    use {'neovim/nvim-lspconfig'}
    use {"kabouzeid/nvim-lspinstall"}

    -- Completion
    use {'hrsh7th/nvim-compe',
            event = "InsertEnter",
            config = function()
                require('SpellBook.Packer-Spells.Compe').config()
            end
        }

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},{'nvim-telescope/telescope-fzy-native.nvim'}}
    }


    -- Debugger
    use {"mfussenegger/nvim-dap",
            config = function ()
	            require'SpellBook.Packer-Spells.Dap'
            end
        }

    -- Explorer
    use {"kyazdani42/nvim-tree.lua",
        commit = "fd7f60e242205ea9efc9649101c81a07d5f458bb",
         config = function()
           require("SpellBook.Packer-Spells.NvimTree").config()
         end,
         }
    use {"ahmedkhalf/lsp-rooter.nvim"}

    -- Icons
    use {"kyazdani42/nvim-web-devicons"}

    -- Writing
    use {"windwp/nvim-autopairs"}
    use {"terrortylor/nvim-comment",
            config = function()
               require('SpellBook.Packer-Spells.Comment')
            end,
}
    -- Keybinding
    use {"folke/which-key.nvim"}

    -- Enables tabs for buffers
    use {"romgrk/barbar.nvim"}

    -- Fixes a bug
    use {"felipec/vim-sanegx"}

end)

