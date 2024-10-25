return {
  "microsoft/vscode-js-debug",
  build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
  "mxsdev/nvim-dap-vscode-js",
  opts = function()
    local dap = require("dap")
    dap.adapters["pwa-node"].host = "127.0.0.1"
  end,
}
