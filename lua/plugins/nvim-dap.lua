return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "mxsdev/nvim-dap-vscode-js",
      "jay-babu/mason-nvim-dap.nvim",
      event = "BufReadPre",
    },
  },
  opts = function()
    local dap = require("dap")
    dap.adapters.node2 = {
      type = "server",
    }
    for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
      require("dap").configurations[language] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach",
          processId = require("dap.utils").pick_process,
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-chrome",
          request = "launch",
          name = 'Start Chrome with "localhost"',
          url = "http://localhost:3000",
          webRoot = "${workspaceFolder}",
          userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
        },
      }
    end
  end,
}
