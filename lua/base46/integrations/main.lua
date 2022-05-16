local colors = require('base46').get_colors('base_30')

local black = colors.black
local blue = colors.blue
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local light_grey = colors.light_grey
local line = colors.line
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange

return {
  Comment = { fg = grey_fg },
  CursorLineNr = { fg = white },
  LineNr = { fg = grey },
  EndOfBuffer = { fg = black },
  FloatBorder = { fg = line },
  NormalFloat = { bg = black },
  Normal = { bg = black },
  Pmenu = { bg = black },
  PmenuSbar = { bg = one_bg },
  PmenuSel = { bg = pmenu_bg, fg = black },
  PmenuThumb = { bg = grey },
  NvimInternalError = { fg = red },
  WinSeparator = { fg = one_bg2 },
  AlphaHeader = { fg = grey_fg },
  AlphaButtons = { fg = light_grey },
  DiffAdd = { fg = blue },
  DiffAdded = { fg = green },
  DiffChange = { fg = light_grey },
  DiffChangeDelete = { fg = red },
  DiffModified = { fg = orange },
  DiffDelete = { fg = red },
  DiffRemoved = { fg = red },
  IndentBlanklineChar = { fg = line },
  IndentBlanklineSpaceChar = { fg = line },
  DiagnosticHint = { fg = purple },
  DiagnosticError = { fg = red },
  DiagnosticWarn = { fg = yellow },
  DiagnosticInformation = { fg = green },
  WhichKey = { fg = blue },
  WhichKeySeparator = { fg = light_grey },
  WhichKeyDesc = { fg = red },
  WhichKeyGroup = { fg = green },
  WhichKeyValue = { fg = green },
  packerPackageName = { fg = red },
  MatchWord = { fg = black, bg = white },
  MatchParen = { link = 'MatchWord' },
  MatchWordCur = {},
  MatchParenCur = { link = 'MatchWordCur' },
}
