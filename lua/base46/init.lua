local utils = require('base46.utils')

local M = {}

local default_config = {
    theme = 'tokyonight',
    custom_highlights = {},
    load_all_highlights = true,
}

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
    _G.base46_config = utils.merge(default_config, opts or {})

    M.clear_highlights('BufferLine')
    M.clear_highlights('TS')

    vim.opt.bg = M.get_colors('type') or 'dark'

    vim.opt.termguicolors = true

    require('base46.term_hl')

    _G.colors = M.get_colors()

    require('base46.highlights')
end

function M.get_lualine_theme(base, theme_name)
    if not base == "base46" then
        error("must use base46 for lualine theme")
        return
    end

    local colors = M.get_colors(base, theme_name)
    local default_b = { bg = colors.one_bg, fg = colors.white }
    local default_c = { bg = colors.black2, fg = colors.white }
    local lualine_theme = {
        normal = {
            a = { bg = colors.red, fg = colors.black, gui = 'bold' },
            b = default_b, c = default_c,
            z = { bg = colors.cyan, fg = colors.black, gui = 'bold' }
        },
        insert = {
            a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
            b = default_b, c = default_c
        },
        visual = {
            a = { bg = colors.dark_purple, fg = colors.black, gui = 'bold' },
            b = default_b, c = default_c
        },
        replace = {
            a = { bg = colors.red, fg = colors.black, gui = 'bold' },
            b = default_b, c = default_c
        },
        command = {
            a = { bg = colors.green, fg = colors.black, gui = 'bold' },
            b = default_b, c = default_c
        },
        inactive = {
            a = { bg = colors.black, fg = colors.gray, gui = 'bold' },
            b = { bg = colors.black, fg = colors.gray },
            c = { bg = colors.black, fg = colors.gray }
        }
    }

    return lualine_theme
end

M.load_highlight = function(group)
    local ok, default_hl = require("base46.integrations." .. group)
    if not ok then
        return
    end
    --local user_hl = config.ui.hl_override

    --if vim.g.transparency then
    --   user_hl = M.merge_tb(user_hl, require "base46.glassy")
    --end

    --for key, value in pairs(user_hl) do
    --   if default_hl[key] then
    --      default_hl[key] = value
    --   end
    --end

    for hl, col in pairs(default_hl) do
        vim.api.nvim_set_hl(0, hl, col)
    end
end

return M
