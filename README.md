# neovim-config
My customized neovim experience

## Setup

### Installation
- Make sure `neovim` is installed
- Move to the `.config` directory
- Clone the repository
- Move into the repository and open the `init.vim` in NeoVim
- [optional] Install `wl-clipboard` [Wayland] or `xclip` [X11] for system clipboard support

```
cd ~/.config
git clone https://github.com/gKits/neovim-config.git nvim
nvim init.vim
```

### Plugins
- Install [packer.neovim](https://github.com/wbthomason/packer.nvim)
- Open `lua/gkits/packer.lua`
- Run `:so`
- Run `:PackerSync`
