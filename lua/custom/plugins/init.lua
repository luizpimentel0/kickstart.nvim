-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  {"mg979/vim-visual-multi"},
  { "rose-pine/neovim"},
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require('nvim-highlight-colors').setup()
    end
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "lukas-reineke/indent-blankline.nvim" },
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
  'tpope/vim-sleuth',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
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
  -- {'akinsho/bufferline.nvim', version = "1", dependencies = 'nvim-tree/nvim-web-devicons'},
--  {"lukas-reineke/indent-blankline.nvim"},
  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },

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
  { 'github/copilot.vim' }
}
