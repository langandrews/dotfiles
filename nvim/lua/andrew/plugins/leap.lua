return {
  "ggandor/leap.nvim",
  event = "VeryLazy",
  dependencies = {
    "tpope/vim-repeat",
  },
  config = function()
    local keymap = vim.keymap

    keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
    keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
    keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")
  end,
}
