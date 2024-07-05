return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-nvim-lua",
    "onsails/lspkind-nvim",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })
    table.insert(opts.sources, { name = "vsnip" })
    table.insert(opts.sources, { name = "luasnip" })
    table.insert(opts.sources, { name = "cmdline" })
    table.insert(opts.sources, { name = "nvm_lua" })
  end,
}
