-- vim: ft=lua tw=80

stds.nvim = {
  globals = {
    'vim',
    'base46_config',
    'colors',
  },
  read_globals = {
    'os',
    'vim',
  },
}

std = 'lua51+nvim'

self = false

cache = true

ignore = {
  '600',
}
