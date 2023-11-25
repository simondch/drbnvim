return {
    "folke/which-key.nvim", "mbbill/undotree", -- themes
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
    {"rebelot/kanagawa.nvim"}, "folke/neoconf.nvim",
    {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
    -- treesitter
    {"nvim-treesitter/nvim-treesitter"}, -- LSP + cmp
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        lazy = true,
        config = false,

        dependencies = {
            "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"
        }
    }, {"neovim/nvim-lspconfig", dependencies = {"hrsh7th/cmp-nvim-lsp"}},
    {"hrsh7th/nvim-cmp", dependencies = {"L3MON4D3/LuaSnip"}},
    -- Editor plugins
    {"numToStr/Comment.nvim", opts = {}, lazy = false},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"}
    }, {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"
        }
    }, {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {"nvim-tree/nvim-web-devicons"}
    }, {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }, {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons"
        },
        init = function() vim.g.barbar_auto_setup = false end,
        version = "^1.0.0",
        lazy = false
    }, {'windwp/nvim-autopairs', event = 'InsertEnter', opts = {}},
    {'j-hui/fidget.nvim', opts = {}}, {'stevearc/dressing.nvim', opts = {}},
    "sindrets/diffview.nvim", {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function() require("nvim-surround").setup({}) end
    }, {"akinsho/toggleterm.nvim", version = "*", config = true},
    {'rmagatti/auto-session'}
}
