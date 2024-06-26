-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim', opts = {} },

    {
      -- Theme inspired by Atom
      'navarasu/onedark.nvim',
      priority = 1000,
      transparency = true,
      config = function()
        vim.cmd.colorscheme 'onedark'
      end,
    },

    {
      -- Set lualine as statusline
      'nvim-lualine/lualine.nvim',
      -- See `:help lualine.txt`
      opts = {
        options = {
          icons_enabled = true,
          theme = 'everforest',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {{
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1 -- relative path
          }},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
      },
    },

    {
      -- Add indentation guides even on blank lines
      'lukas-reineke/indent-blankline.nvim',
      main = "ibl",
      opts = {
        indent = { char = '┊' },
        scope = { enabled = false }
      },
    },
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
    { "tpope/vim-surround" },
    { "tpope/vim-repeat" },
    {"mg979/vim-visual-multi"},
    {
      "brenoprata10/nvim-highlight-colors",
      config = function()
        require('nvim-highlight-colors').setup()
      end
    },

    { "akinsho/toggleterm.nvim", config = true },
    { "windwp/nvim-ts-autotag",  opts = {} },
    {
      "iamcco/markdown-preview.nvim",
      build = "cd app && npm install",
      init = function() vim.g.mkdp_filetypes = { "markdown" } end,
      ft = { "markdown" },
    },
    {
      'altermo/ultimate-autopair.nvim',
      event={'InsertEnter','CmdlineEnter'},
      branch='v0.6',
      opts={},
    },
    -- {'preservim/nerdtree'},
    {"ryanoasis/vim-devicons"},
    {"tiagofumo/vim-nerdtree-syntax-highlight"},
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
      'barrett-ruth/live-server.nvim',
      build = 'npm i -g live-server',
      config = true
    },
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    { 'ryanoasis/vim-devicons' },
    { 'github/copilot.vim' },
    { 'xiyaowong/transparent.nvim' },
    {
      'rose-pine/neovim', name = 'rose-pine',
      config = function ()
        require('rose-pine').setup({
          variant = "auto",
          styles = {
            transparency = true
          }
        })
      end
    },
    {
      "catppuccin/nvim", name = "catppuccin", priority = 1000,
      config = function ()
        require('catppuccin').setup({
          transparent_background = true
        })
      end
    },
  { 'datsfilipe/min-theme.nvim', name='min-theme',
    config = function()
      require('min-theme').setup({
        transparent = true
      })
    end
  },
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme('everforest')
    end
  }
}
