---------------------------------------
------      P L U G I N S        ------
---------------------------------------

local plugins = {

  -- Dashboard
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.config.alpha"
    end
  },

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight-night]]) -- load colorscheme
    end
  },

  -- Barbecue
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = require "plugins.config.barbecue"
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "plugins.config.bufferline"
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag"
    },
    config = function()
      require "plugins.config.treesitter"
    end
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require "plugins.config.autopairs"
    end
  },

  -- Neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = require "plugins.config.neotree"
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-tree/nvim-web-devicons",
      "ThePrimeagen/harpoon",
      "sharkdp/fd",
    },
    config = function()
      require "plugins.config.telescope"
    end
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.config.lualine"
    end
  },

  -- Nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",           -- source for text in buffer
      "hrsh7th/cmp-path",             -- source for file system paths
      "L3MON4D3/LuaSnip",             -- snippet engine
      "saadparwaiz1/cmp_luasnip",     -- for autocompletion
      "rafamadriz/friendly-snippets", -- useful snippets
      "onsails/lspkind.nvim",         -- vs-code like pictograms
    },
    config = function()
      require "plugins.config.nvim-cmp"
    end
  },

  -- Nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      {
        "folke/neodev.nvim",
        config = function()
          require("neodev").setup()
        end
      },
    },
    config = function()
      require "plugins.config.lspconfig"
    end
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "jayp0521/mason-null-ls.nvim",
    },
    config = function()
      require "plugins.config.mason"
    end
  },

  -- Null-ls
  {
    "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "plugins.config.null-ls"
    end
  },

  -- Noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  -- Indentline
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = require "plugins.config.indentline"
  },

  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      size = 15,
      open_mapping = [[<S-\\>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = "1",
      start_in_insert = false,
      persist_size = true,
      direction = "horizontal",
    },
  },

  -- Colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function(_, opts)
      require("colorizer").setup(opts)
      -- execute colorizer as soon as possible
      vim.defer_fn(function()
        require("colorizer").attach_to_buffer(0)
      end, 0)
    end,
  },

  -- Mini Animate
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
  },

  -- Mini Comment
  {
    'echasnovski/mini.comment',
    version = '*',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("mini.comment").setup()
    end
  },

  -- Indentscope
  {
    "echasnovski/mini.indentscope",
    version = "*",
    lazy = false,
    opts = {
      symbol = "▏",
      options = {
        border = "both",
      },
    },
    init = function()
      vim.api.nvim_create_autocmd(
        "FileType", {
          pattern = {
            "help",
            "alpha",
            "dashboard",
            "neo-tree",
            "Trouble",
            "lazy",
            "mason",
            "notify",
            "toggleterm",
            "lazyterm",
          },
        callback = function()
         vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },

  -- Surround
  {
    'echasnovski/mini.surround',
    version = '*',
  },

  -- Dressing
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
}

return plugins
