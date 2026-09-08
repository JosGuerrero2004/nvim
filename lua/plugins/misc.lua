return {
  -- To change tags automaticaly
  { "windwp/nvim-ts-autotag" },

  {
    "okuuva/auto-save.nvim",
    opts = {
      enabled = true,
    },
  },
  {
    "barrett-ruth/live-server.nvim",
  },
  { "mlaursen/vim-react-snippets" },
  { "mbbill/undotree" },
  -- { "dcampos/nvim-snippy", dependencies = { "honza/vim-snippets" } },

  {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          lua_ls = {
            settings = {
              Lua = {
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                    "/usr/share/hypr/stubs", -- Hyprland stubs
                  },
                  checkThirdParty = false,
                },
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          },
          cssls = {},
          html = {},
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, {
          "css",
          "scss",
        })
      end
    end,
  },
}
