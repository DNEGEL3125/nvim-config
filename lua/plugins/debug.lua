return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            require('dap') -- Ensure nvim-dap is loaded
        end
    },
    {
        'rcarriga/nvim-dap-ui', -- UI for nvim-dap
        dependencies = {'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio'},
        config = function()
          require('dapui').setup()
        end,
    }
}
