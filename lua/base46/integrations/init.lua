local utils = require('base46.utils')

local highlights = {}

for _, file in pairs({
    'default',
    'misc',
    'syntax',
}) do
    local ok, highlight = utils.req('base46.integrations.' .. file)
    if ok then
        highlights = utils.merge(highlights, highlight)
    end
end

if base46_config.load_all_highlights then
    for _, file in pairs({
        'bufferline',
        'cmp',
        'devicons',
        'git',
        'feline',
        'default',
        'misc',
        'nvimtree',
        'syntax',
        'telescope',
        'treesitter',
        'blankline',
        'lsp',
        'gps',
        'navic',
        'whichkey',
    }) do
        local ok, highlight = utils.req('base46.highlights.' .. file)
        if ok then
            highlights = utils.merge(highlights, highlight)
        end
    end
end

local polish_hl = require('base46').get_colors('polish_hl')
if polish_hl then
    highlights = utils.merge(highlights, polish_hl)
end

if base46_config.custom_highlights then
    highlights = utils.merge(highlights, base46_config.custom_highlights or {})
end

for hl, col in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, col)
end
