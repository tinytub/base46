local colors = require('base46').get_colors('base_30')

return {
  BufferLineBackground = {
    fg = colors.grey,
    bg = colors.black2,
  },
  BufferLineBufferSelected = {
    fg = colors.white,
    bg = colors.black,
    bold = true,
  },
  BufferLineBufferVisible = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineError = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineErrorDiagnostic = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineCloseButton = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineCloseButtonVisible = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineCloseButtonSelected = {
    fg = colors.red,
    bg = colors.black,
  },
  BufferLineFill = {
    fg = colors.grey_fg,
    bg = colors.black2,
  },
  BufferlineIndicatorSelected = {
    fg = colors.black,
    bg = colors.black,
  },
  BufferLineModified = {
    fg = colors.red,
    bg = colors.black2,
  },
  BufferLineModifiedVisible = {
    fg = colors.red,
    bg = colors.black2,
  },
  BufferLineModifiedSelected = {
    fg = colors.green,
    bg = colors.black,
  },
  BufferLineSeparator = {
    fg = colors.black2,
    bg = colors.black2,
  },
  BufferLineSeparatorVisible = {
    fg = colors.black2,
    bg = colors.black2,
  },
  BufferLineSeparatorSelected = {
    fg = colors.black2,
    bg = colors.black2,
  },
  BufferLineTab = {
    fg = colors.light_grey,
    bg = colors.black,
  },
  BufferLineTabSelected = {
    fg = colors.black2,
    bg = colors.black,
  },
  BufferLineTabClose = {
    fg = colors.red,
    bg = colors.black,
  },
  BufferLineDevIconDefaultInactive = {
    bg = 'NONE',
  },
  BufferLineDevIconDefaultSelected = {
    bg = 'NONE',
  },
  BufferLineDuplicate = {
    fg = 'NONE',
    bg = colors.black2,
  },
  BufferLineDuplicateSelected = {
    fg = colors.red,
    bg = colors.black,
  },
  BufferLineDuplicateVisible = {
    fg = colors.blue,
    bg = colors.black2,
  },
}
