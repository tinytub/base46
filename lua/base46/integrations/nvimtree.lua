local colors = require('base46').get_colors('base_30')

return {
  NvimTreeEmptyFolderName = { fg = colors.blue },
  NvimTreeEndOfBuffer = { fg = colors.darker_black },
  NvimTreeFolderIcon = { fg = colors.blue },
  NvimTreeFolderName = { fg = colors.blue },
  NvimTreeGitDirty = { fg = colors.red },
  NvimTreeIndentMarker = { fg = colors.grey_fg },
  NvimTreeNormal = { bg = colors.darker_black },
  NvimTreeNormalNC = { bg = colors.darker_black },
  NvimTreeOpenedFolderName = { fg = colors.blue, bold = true },
  NvimTreeGitIgnored = { fg = colors.light_grey },
  NvimTreeWinSeparator = { fg = colors.darker_black, bg = colors.darker_black },
  NvimTreeWindowPicker = { fg = colors.red, bg = colors.black2 },
  NvimTreeSpecialFile = { fg = colors.yellow, bold = true },
  NvimTreeRootFolder = { fg = colors.red, bold = true },
}
