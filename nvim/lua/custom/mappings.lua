local M = {}

M.saver = {
  n = {
    -- save
    ["<leader>w"] = { "<cmd> w <CR>", "  save file" },
    --quit
    ["<leader>q"] = { "<cmd> q <CR>", "  exit" },
  },
}

M.exitInnerMode = {

  i = {
    ["jj"] = { "<ESC>", "normal mode" },
  },
}

return M
