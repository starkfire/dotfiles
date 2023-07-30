# dotfiles

Configs I use with nvim, zsh, and tmux.

Config for [hyper](https://github.com/vercel/hyper) can be found [here](https://github.com/starkfire/terminal-configs). I didn't include it in this repository since I already moved away from it.

## Neovim

### Plugins

* [nerdtree](https://github.com/preservim/nerdtree)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [supertab](https://github.com/ervandew/supertab)
* [jedi-vim](https://github.com/davidhalter/jedi-vim)
* [coc.nvim](https://github.com/neoclide/coc.nvim)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [fzf](https://github.com/junegunn/fzf)
* [fzf.vim](https://github.com/junegunn/fzf.vim)
* [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)


### Notes

This config is entirely based on what worked well as a daily driver on my end. So far, this is entirely enough to make me not look back to VSCode and get the job done.

If you are not a fan of completion engines like CoC, you can just opt out and use YCM instead or integrate with a language server of your choice. I also had to opt out of [ale](https://github.com/dense-analysis/ale), since it didn't work well with CoC.

For Python, you can also use [coc-pyright](https://github.com/fannheyward/coc-pyright) or [python-lsp-server](https://github.com/python-lsp/python-lsp-server).

### CoC Extensions

* coc-tsserver
* coc-rust-analyzer
* coc-json
* coc-go

## Zsh

The config depends on [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) and [powerlevel10k](https://github.com/romkatv/powerlevel10k).
