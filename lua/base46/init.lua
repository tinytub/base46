local utils = require('base46.utils')

local M = {}

M.get_colors = function(type, theme_name)
  local name = vim.g.base46_config.theme or theme_name or 'tokyonight'

  local path = 'base46.themes.' .. name

  local ok, theme = utils.req(path)

  if ok then
    return theme[type]
  else
    error('Cannot find theme ' .. name)
  end
end

M.setup = function(opts)
  vim.g.base46_config = opts

  vim.opt.bg = M.get_colors('type') or 'dark'

  vim.opt.termguicolors = true

  require('base46.highlights')
end

return M
