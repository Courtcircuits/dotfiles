-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run= ':tsupdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('prettier/vim-prettier')
  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  }
  use('ThePrimeagen/vim-be-good')
  use('nvim-tree/nvim-web-devicons')
  use ({"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end})
  use ({
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })
  use ({'echasnovski/mini.nvim',
    config = function()
      require('mini.comment').setup()
    end
  })
  use({
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  })
  use({'rrethy/vim-hexokinase', run = 'make hexokinase'})
  -- install without yarn or npm
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })
  use({
    'alexvzyl/nordic.nvim',
    as = 'nordic',
    config = function ()
      vim.cmd('colorscheme nordic')
    end
  })
  use({'nvim-tree/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  })
  use({
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup()
    end
  })
  use("github/copilot.vim")
  use("lervag/vimtex")
  use({
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('alpha').setup(require('alpha.themes.startify').opts)
    end
  })
  use {
    'vonheikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- lsp support
      {'neovim/nvim-lspconfig'},             -- required
      {                                      -- optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'masonupdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- optional

    -- autocompletion
    {'hrsh7th/nvim-cmp'},     -- required
    {'hrsh7th/cmp-nvim-lsp'}, -- required
    {'l3mon4d3/luasnip'},     -- required
  }
}
end)
