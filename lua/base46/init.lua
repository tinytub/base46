local utils = require('base46.utils')
local M = {}

M.get_colors = function(type)
  local name = vim.g.base46_config.theme

  local path = 'base46.hl_themes.' .. name

  local ok, theme = utils.req(path)

  if ok then
    return theme[type]
  else
    error('Cannot find theme ' .. name)
  end
end

M.setup = function(opts)
  vim.g.base46_config = opts

  vim.o.termguicolors = true
  vim.g.termguicolors = true

  require('base46.highlights')
end

return M
