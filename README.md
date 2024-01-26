# dotfiles

Configs I use with nvim, zsh, and tmux.

Config for [hyper](https://github.com/vercel/hyper) can be found [here](https://github.com/starkfire/terminal-configs). I didn't include it in this repository since I already moved away from it.

## Neovim

### Plugins

* [coc.nvim](https://github.com/neoclide/coc.nvim)
* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
* [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
* [lazy.nvim](https://github.com/folke/lazy.nvim)
* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
* [mason.nvim](https://github.com/williamboman/mason.nvim)
* [nvim-treesitter](https://github.com/nvim-lualine/lualine.nvim)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
* [trouble.nvim](https://github.com/folke/trouble.nvim)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)

### Notable Changes

* migrated my Windows config for Vim to Lua. Haven't tested it on a Linux environment yet.

### Notes

This config is entirely based on what worked well as a daily driver on my end. So far, this is entirely enough to make me not look back to VSCode and get the job done.

Note that the Vim config here uses [CoC](https://github.com/neoclide/coc.nvim). In the near future, I might experiment on using nvim-lspconfig instead, since CoC relies on Node.js and it has certain incompatibilies with other plugins.

## Zsh

The config depends on [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) and [powerlevel10k](https://github.com/romkatv/powerlevel10k).
