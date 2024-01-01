local M = {}

M.general = {
  n = {
    -- split vertically (doom bindings)
    ["<leader>wv"] = { "<cmd> vs <CR>", "Window split vertically" },

    -- close window (doom bindings)
    ["<leader>wc"] = { "<cmd> q <CR>", "Close window"},

    -- buffer commands
    ["<leader>b"] = { " ", "Buffer"},

    -- new buffer (doom bindings)
    ["<leader>bb"] = { "<cmd> enew <CR>", "New buffer" },

    -- save buffer (doom bindings)
    ["<leader>bs"] = { "<cmd> w <CR>", "Save buffer" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- toggle (doom bindings)
    ["<leader>op"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Toggle Breakpoint"}
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end,
      "Run Python Debugger"
    }
  },
}

return M
