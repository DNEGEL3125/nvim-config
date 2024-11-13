return {
    -- Alpha (Dashboard)
    {
        "goolord/alpha-nvim",
        lazy = true,
    },

    -- Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        lazy = true,
    },

    -- Telescope (Fuzzy Finder)
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },

    -- Which-key
    {
        'folke/which-key.nvim',
        lazy = true,
        opts = {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        },
        keys = {
          {
            "<leader>?",
            function()
              require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
          },
        },
    },

}
