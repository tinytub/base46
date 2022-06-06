local utils = require('base46.utils')

local integrations = {
    'bufferline',
    'cmp',
    'devicons',
    'git',
    'feline',
    'main',
    'misc',
    'nvimtree',
    'syntax',
    'telescope',
    'treesitter',
    'gps',
}

local highlights = {}

for _, file in pairs(integrations) do
    local integration = require('base46.integrations.' .. file)
    highlights = utils.merge(highlights, integration)
end

local polish_hl = require('base46').get_colors('polish_hl')
if polish_hl then
    highlights = utils.merge(highlights, polish_hl)
end

if base46_config.custom_highlights then
    highlights = utils.merge(base46_config.custom_highlights, highlights)
end

require('base46.term_hl')

for hl, col in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, col)
end
