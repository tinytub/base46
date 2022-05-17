-- vim: ft=lua tw=80

stds.nvim = {
  globals = {
    'vim',
    'TERMINAL',
    'USER',
    'C',
    'Config',
    'WORKSPACE_PATH',
    'USER_CONFIG_PATH',
  },
  read_globals = {
    'os',
    'vim',
  },
}

exclude_files = { 'lua/packer_compiled.lua' }

std = 'lua51+nvim'

self = false

cache = true

ignore = {
  '600',
}
