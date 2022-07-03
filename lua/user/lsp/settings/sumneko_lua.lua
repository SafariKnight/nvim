return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
        severity = {
          -- _G.<global> = ""
        },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
