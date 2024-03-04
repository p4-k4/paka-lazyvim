return {
  "mfussenegger/nvim-dap",
  keys = {
    { "<leader>dc", "<cmd>lua require('dap').continue()<CR>" },
  },
  config = function(_, opts)
    -- setup dap config by VsCode launch.json file
    -- require("dap.ext.vscode").load_launchjs()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close({})
    end
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch Dart Program",
        program = "${file}",
        cwd = "${workspaceFolder}",
        args = { "--enable-experiment=macros" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
      },
    }
  end,
}
