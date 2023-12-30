-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    --  current theme
    use 'EdenEast/nightfox.nvim'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- to enable the status line below
    use('itchyny/lightline.vim')
    use 'mbbill/undotree'
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    -- use K for definition after putting cursor on any item, <F3> to format, <F4> to see code actions
    -- check lsp-zero github for more actions
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'mfussenegger/nvim-lint' },
            { 'rshkarin/mason-nvim-lint' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use { 'echasnovski/mini.indentscope', branch = 'stable' }

    --  use Emmet to auto generate code like html e.g. type -> html_5, then <C-y>, to generate the code
    use('mattn/emmet-vim')
    --  use this to comment out code selections in visual mode using "gc", select commented code and use "gc" to uncomment
    use 'tpope/vim-commentary'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
    -- for opening multiple files as tabs
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim'     -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
end)
