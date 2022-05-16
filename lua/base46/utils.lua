local M = {}

M.merge = function(...)
  return vim.tbl_deep_extend('force', ...)
end

M.req = function(package_name)
  return pcall(require, package_name)
end

return M
