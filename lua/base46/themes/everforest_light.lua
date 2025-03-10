local M = {}

M.base_30 = {
  white = '#272f35',
  darker_black = '#f5efde',
  black = '#fff9e8',
  black2 = '#ebe5d4',
  one_bg = '#c6c2aa',
  one_bg2 = '#b6b29a',
  one_bg3 = '#a6a28a',
  grey = '#a6b0a0',
  grey_fg = '#939f91',
  grey_fg2 = '#829181',
  light_grey = '#798878',
  red = '#c85552',
  baby_pink = '#ce8196',
  pink = '#ef6590',
  line = '#e8e2d1',
  green = '#5da111',
  vibrant_green = '#87a060',
  nord_blue = '#656c5f',
  blue = '#3a94c5',
  yellow = '#dfa000',
  sun = '#d1b171',
  purple = '#b67996',
  dark_purple = '#966986',
  teal = '#69a59d',
  orange = '#F7954F',
  cyan = '#7521e9',
  statusline_bg = '#f0ead9',
  lightbg = '#c9c3b2',
  lightbg2 = '#dcd6c5',
  pmenu_bg = '#5f9b93',
  folder_bg = '#747b6e',
}

M.base_16 = {
  base00 = '#fff9e8',
  base01 = '#f6f0df',
  base02 = '#ede7d6',
  base03 = '#e5dfce',
  base04 = '#ddd7c6',
  base05 = '#495157',
  base06 = '#3b4349',
  base07 = '#272f35',
  base08 = '#5f9b93',
  base09 = '#b67996',
  base0A = '#8da101',
  base0B = '#d59600',
  base0C = '#ef615e',
  base0D = '#87a060',
  base0E = '#c85552',
  base0F = '#c85552',
}

M.polish_hl = {
  DiffAdd = {
    fg = M.base_30.green,
  },

  TSTag = {
    fg = M.base_30.orange,
  },

  TSField = {
    fg = M.base_16.base05,
  },

  TSInclude = {
    fg = M.base_16.base08,
  },

  TSConstructor = {
    fg = M.base_30.blue,
  },

  WhichKeyDesc = {
    fg = M.base_30.white,
  },

  WhichKey = {
    fg = M.base_30.white,
  },

  NvimTreeFolderName = {
    fg = '#4e565c',
  },
}

M.type = 'light'

return M
