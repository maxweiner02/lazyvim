return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    opts.setup = {
      winbar = true,
      statusline = true,
    }
    opts.event_handlers = {
      {
        event = "neo_tree_window_after_open",
        handler = function(args)
          if args.position == "left" or args.position == "right" then
            vim.cmd("wincmd =")
          end
        end,
      },
      {
        event = "neo_tree_window_after_close",
        handler = function(args)
          if args.position == "left" or args.position == "right" then
            vim.cmd("wincmd =")
          end
        end,
      },
    }
  end,
}
