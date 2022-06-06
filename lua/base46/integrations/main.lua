local colors = require('base46').get_colors('base_30')

local black = colors.black
local blue = colors.blue
local darker_black = colors.darker_black
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local light_grey = colors.light_grey
local line = colors.line
local one_bg = colors.one_bg
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange

return {
  Comment = { fg = colors.grey_fg },
  CursorLineNr = { fg = colors.white },
  LineNr = { fg = colors.grey },
  EndOfBuffer = { fg = colors.black },
  FloatBorder = { fg = colors.line },
  NormalFloat = { bg = colors.black },
  Normal = { bg = colors.black },
  Pmenu = { bg = colors.black },
  PmenuSbar = { bg = colors.one_bg },
  PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
  PmenuThumb = { bg = colors.grey },
  NvimInternalError = { fg = colors.red },
  WinSeparator = { fg = colors.line },
  AlphaHeader = { fg = colors.grey_fg },
  AlphaButtons = { fg = colors.light_grey },
  LspReferenceText = { fg = colors.darker_black, bg = colors.white },
  LspReferenceRead = { fg = colors.darker_black, bg = colors.white },
  LspReferenceWrite = { fg = colors.darker_black, bg = colors.white },
  DiffAdd = { fg = colors.blue },
  DiffAdded = { fg = colors.vibrant_green },
  DiffChange = { fg = colors.light_grey },
  DiffChangeDelete = { fg = colors.red },
  DiffModified = { fg = colors.orange },
  DiffDelete = { fg = colors.red },
  DiffRemoved = { fg = colors.red },
  GitSignsAdd = { link = 'DiffAdded' },
  GitSignsChange = { link = 'DiffModified' },
  GitSignsDelete = { link = 'DiffDelete' },
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  DiagnosticHint = { fg = colors.purple },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInformation = { fg = colors.vibrant_green },
  WhichKey = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.light_grey },
  WhichKeyDesc = { fg = colors.red },
  WhichKeyGroup = { fg = colors.green },
  WhichKeyValue = { fg = colors.green },
  packerPackageName = { fg = colors.red },
  MatchWord = { fg = colors.orange, bold = true },
  MatchParen = { link = 'MatchWord' },
  MatchWordCur = {},
  MatchParenCur = { link = 'MatchWordCur' },
}
