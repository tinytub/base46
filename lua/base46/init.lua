local utils = require('base46.utils')

local M = {}

--  credits to https://github.com/max397574 for this function
M.clear_highlights = function(hl_group)
    local highlights_raw = vim.split(vim.api.nvim_exec('filter ' .. hl_group .. ' hi', true), '\n')
    local highlight_groups = {}

    for _, raw_hi in ipairs(highlights_raw) do
        table.insert(highlight_groups, string.match(raw_hi, hl_group .. '%a+'))
    end

    for _, highlight in ipairs(highlight_groups) do
        vim.cmd('hi clear ' .. highlight)
    end
end

M.get_colors = function(type, theme_name)
    local name = base46_config.theme or theme_name or 'tokyonight'

    local path = 'base46.themes.' .. name

    local ok, theme = utils.req(path)

    if ok then
        if type then
            return theme[type]
        else
            return theme
        end
    else
        error('Cannot find theme ' .. name)
    end
end

M.setup = function(opts)
    _G.base46_config = opts

    M.clear_highlights('BufferLine')
    M.clear_highlights('TS')

    vim.opt.bg = M.get_colors('type') or 'dark'

    vim.opt.termguicolors = true

    _G.colors = M.get_colors()

    require('base46.highlights')
end

return M
