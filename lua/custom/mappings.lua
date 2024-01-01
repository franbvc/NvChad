local M = {}

M.general = {
  n = {
    -- split vertically (doom bindings)
    ["<leader>wv"] = { "<cmd> vs <CR>", "Window split vertically" },

    -- close window (doom bindings)
    ["<leader>wc"] = { "<cmd> q <CR>", "Close window" },

    -- buffer commands
    ["<leader>b"] = { " ", "Buffer"},

    -- new buffer (doom bindings)
    ["<leader>bb"] = { "<cmd> enew <CR>", "New buffer" },

    -- save buffer (doom bindings)
    ["<leader>bs"] = { "<cmd> w <CR>", "Save buffer" },

    -- kill editor
    ["<leader>k"] = { "<cmd> qa <CR>", "Kill editor" },
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
    ["<leader>d"] = {" ", "Debugger"},
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Toggle Breakpoint"},
    ["<leader>dr"] = {"<cmd> DapContinue <CR>", "Start or continue the debugger"},
    ["<leader>ds"] = {"<cmd> DapStepOver <CR>", "Step over the debugger"},
    ["<leader>dk"] = {"<cmd> DapTerminate <CR>", "Kill the debugger"},
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dp"] = {" ", "Debugger Python"},
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end,
      "Run Python Debugger"
    }
  },
}

M.tabufline = {
  plugin = true,
  n = {
    -- close buffer + hide terminal buffer (doom bindings)
    ["<leader>bk"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Kill buffer",
    },
  }
}

return M
