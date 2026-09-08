return {
  -- {
  --   "oclay1st/gradle.nvim",
  --   cmd = { "Gradle", "GradleExec", "GradleInit", "GradleFavorites" },
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --   },
  --   opts = {}, -- options, see default configuration
  --   keys = {
  --     { "<leader>G", desc = "+Gradle", mode = { "n", "v" } },
  --     { "<leader>Gg", "<cmd>Gradle<cr>", desc = "Gradle Projects" },
  --     { "<leader>Gf", "<cmd>GradleFavorites<cr>", desc = "Gradle Favorite Commands" },
  --   },
  -- },
  "oclay1st/maven.nvim",

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "google-java-format" })
    end,
  },
}
