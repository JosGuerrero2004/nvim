return {
  { "HiPhish/rainbow-delimiters.nvim" },
  { "DaikyXendo/nvim-material-icon" },
  -- { "nvim-mini/mini.icons" },
  {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup({
        highlighter = {
          --auto_enable = true,
          lsp = true,
        },
      })
    end,
  },
}
