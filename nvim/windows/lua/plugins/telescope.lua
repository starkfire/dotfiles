local config = {
    TelescopeBorder = {
        fg = '#16161e',
        bg = '#16161e'
    },
    TelescopePromptBorder = {
        fg = "#1f2336",
        bg = "#1f2336"
    },
    TelescopeNormal = {
        bg = '#16161e'
    }
}

local tokyonightConfig = {
    -- borderless telescope
    defaults = {
        on_highlights = function(hl, c)
            -- local prompt = "#2d3149"
            local prompt = "#99154a"
            hl.TelescopeNormal = {
                bg = c.bg_dark,
                fg = c.fg_dark,
            }
            hl.TelescopeBorder = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopePromptNormal = {
                bg = prompt,
            }
            hl.TelescopePromptBorder = {
                bg = prompt,
                fg = prompt
            }
            hl.TelescopePromptTitle = {
                bg = prompt,
                fg = prompt
            }
            hl.TelescopePreviewTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopeResultsTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
        end,
    }
}

local telescopeConfig = {
    defaults = {
        theme = "center",
        prompt_prefix = "   ",
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.5,
                results_width = 0.8
            }
        },
        on_highlights = function(hl, c)
            local prompt = '#99154a'
            hl.TelescopeBorder = {
                bg = prompt,
                fg = prompt
            }
            hl.TelescopeNormal = {
                bg = prompt,
                fg = prompt
            }
            hl.TelescopePromptNormal = {
                bg = prompt
            }
            hl.TelescopePromptBorder = {
                bg = prompt
            }
        end,
    },
    pickers = {
        find_files = {
            -- theme = "dropdown"
        }
    }
}

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    module = 'telescope',
    config = function()
        require('telescope').setup(telescopeConfig)
    end
}
