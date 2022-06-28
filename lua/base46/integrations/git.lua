local theme = require('base46').get_colors('base_16')
local colors = require('base46').get_colors('base_30')

--return {
--    gitcommitOverflow = { fg = theme.base08 },
--    gitcommitSummary = { fg = theme.base08 },
--    gitcommitComment = { fg = theme.base03 },
--    gitcommitUntracked = { fg = theme.base03 },
--    gitcommitDiscarded = { fg = theme.base03 },
--    gitcommitSelected = { fg = theme.base03 },
--    gitcommitHeader = { fg = theme.base0E },
--    gitcommitSelectedType = { fg = theme.base0D },
--    gitcommitUnmergedType = { fg = theme.base0D },
--    gitcommitDiscardedType = { fg = theme.base0D },
--    gitcommitBranch = { fg = theme.base09, bold = true },
--    gitcommitUntrackedFile = { fg = theme.base0A },
--    gitcommitUnmergedFile = { fg = theme.base08, bold = true },
--    gitcommitDiscardedFile = { fg = theme.base08, bold = true },
--    gitcommitSelectedFile = { fg = theme.base0B, bold = true },
--    DiffAdd = { fg = colors.blue },
--    DiffAdded = { fg = colors.vibrant_green },
--    DiffChange = { fg = colors.light_grey },
--    DiffChangeDelete = { fg = colors.red },
--    DiffModified = { fg = colors.orange },
--    DiffDelete = { fg = colors.red },
--    DiffRemoved = { fg = colors.red },
--    GitSignsAdd = { link = 'DiffAdded' },
--    GitSignsChange = { link = 'DiffModified' },
--    GitSignsDelete = { link = 'DiffDelete' },
--}
return {
  -- Diff
  DiffAdd = { bg = '#1e3425' },
  DiffAdded = { bg = '#1e3425' },
  DiffChange = { bg = colors.black },
  DiffChangeDelete = { fg = colors.red },
  DiffModified = { fg = colors.orange },
  DiffDelete = { bg = '#3b2021' },
  DiffRemoved = { fg = colors.red, bg = '#3b2021' },
  DiffText = { bg = colors.light_grey },

  -- diffview.nvim
  DiffviewFilePanelTitle = { fg = colors.cyan, bold = true },
  DiffviewDiffAddAsDelete = { bg = '#3b2021' },

  -- GitSigns.nvim
  GitSignsAdd = { fg = colors.green },
  GitSignsAdded = { fg = colors.green },
  GitSignsChange = { fg = colors.light_grey },
  GitSignsChangeDelete = { fg = colors.red },
  GitSignsModified = { fg = colors.orange },
  GitSignsDelete = { fg = colors.red },
  GitSignsRemoved = { fg = colors.red },
  GitSignsText = { bg = colors.light_grey },
}
