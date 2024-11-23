require("autoclose").setup({
   keys = {
      ["{"] = { escape = true, close = true, pair = "{}", disabled_filetypes = {} },
        ["'"] = { escape = false, close = false },
   },
    options = {
        disabled_filetypes = {"text", "markdown"},
    },
})
