return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    vim.cmd("highlight RainbowDelimiterCyan guifg=#46d9ff")
    vim.cmd("highlight RainbowDelimiterBlue guifg=#5699af")
    vim.cmd("highlight RainbowDelimiterViolet guifg=#a9a1e1")
    vim.cmd("highlight RainbowDelimiterMagenta guifg=#c678dd")
    vim.cmd("highlight RainbowDelimiterGreen guifg=#98be65")

    local rainbow_delimiters = require("rainbow-delimiters")

    require("rainbow-delimiters.setup").setup({
      whitelist = {
        "commonlisp",
        "clojure",
      },
      strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        vim = rainbow_delimiters.strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      priority = {
        [""] = 110,
        lua = 210,
      },
      highlight = {
        "RainbowDelimiterCyan",
        "RainbowDelimiterMagenta",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
      },
    })
  end,
}
