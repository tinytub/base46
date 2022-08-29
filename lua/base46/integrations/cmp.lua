local base16 = require('base46').get_colors('base_16')
local colors = require('base46').get_colors('base_30')

return {
  CmpDocumentation = { link = 'Pmenu' },
  CmpPmenu = { link = 'Pmenu' },
  CmpItemAbbr = { fg = colors.white },
  CmpItemAbbrMatch = { fg = colors.blue, bold = true },
  CmpBorder = { fg = colors.grey },
  CmpDocBorder = { fg = colors.grey },
  CmpItemKindIdentifier = { fg = base16.base08 },
  CmpItemKindVariable = { fg = base16.base0E },
  CmpItemKindStructure = { fg = base16.base0E },
  CmpItemKindType = { fg = base16.base0A },
  CmpItemKindFolder = { fg = base16.base07 },
  CmpItemKindUnit = { fg = base16.base0E },
  CmpItemKindColor = { fg = colors.red },
  CmpItemKindReference = { fg = base16.base05 },
  CmpItemKindOperator = { fg = base16.base05 },
  CmpItemKindText = { fg = colors.orange },
  CmpItemKindMethod = { fg = colors.blue },
  CmpItemKindFunction = { fg = colors.blue },
  CmpItemKindConstructor = { fg = colors.yellow },
  CmpItemKindField = { fg = colors.blue },
  CmpItemKindClass = { fg = colors.yellow },
  CmpItemKindInterface = { fg = colors.yellow },
  CmpItemKindModule = { fg = colors.blue },
  CmpItemKindProperty = { fg = colors.blue },
  CmpItemKindValue = { fg = colors.orange },
  CmpItemKindEnum = { fg = colors.yellow },
  CmpItemKindKeyword = { fg = colors.purple },
  CmpItemKindSnippet = { fg = colors.green },
  CmpItemKindFile = { fg = colors.blue },
  CmpItemKindEnumMember = { fg = colors.cyan },
  CmpItemKindConstant = { fg = colors.orange },
  CmpItemKindStruct = { fg = colors.yellow },
  CmpItemKindTypeParameter = { fg = colors.yellow },
}
