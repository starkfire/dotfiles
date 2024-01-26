local tokyonightColor = "#2d3149"
local bg_dark = "#1f2335"
local text_color = "#131a21"

local TelescopePrompt = {
    TelescopeNormal = {
        bg = bg_dark,
        fg = bg_dark
    },
    TelescopeBorder = {
        bg = bg_dark,
        fg = bg_dark
    },
    TelescopePromptNormal = { 
        bg = tokyonightColor
    },
    TelescopePromptBorder = { 
        bg = tokyonightColor, 
        fg = tokyonightColor
    },
    TelescopePromptTitle = { 
        bg = "#dd7f88", 
        fg = text_color
    },
    TelescopePreviewTitle = {
        bg = "#98aee5",
        fg = text_color
    },
    TelescopePreviewBorder = {
        bg = bg_dark,
        fg = bg_dark
    },
    TelescopeResultsTitle = {
        bg = "#9fe8c3",
        fg = text_color
    },
    TelescopeResultsBorder = {
        bg = bg_dark,
        fg = bg_dark
    }
}

for hl, col in pairs(TelescopePrompt) do
    vim.api.nvim_set_hl(0, hl, col)
end

return {
    'folke/tokyonight.nvim',
    config = function()
        require('tokyonight').setup()
        vim.cmd("colorscheme tokyonight")
    end
}
