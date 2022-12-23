local M = {}
local override = require "custom.override"

M.ui = {
  theme = "onedark",
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["williamboman/mason.nvim"] = override.mason,
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
  },
  user = require "custom.plugins",
}

M.mappings = require "custom.mappings"

return M
