<h1 align="center">That's It Vim</h1>

<p align="center">
An extremely lightweight set of configs and plugins, for a pleasant experience with vanilla VIM
</p>

<h2 align="center">
 Showcase
</h2>

![Image Preview](https://i.imgur.com/ArByBMT.png)
![Fzf Showcase](https://i.imgur.com/e9f7TPM.png)

## 🗒️ Requirements

To use **That's It Vim**, ensure you have the following installed:

- **Vim v8+** with Python support (`+python3`)
  - Check your Vim version with:
    ```shell
    vim --version | grep python
    ```
  - If you see `+python3`, you're good to go. If you see `-python3`, you may need to reinstall Vim with Python support.

- **[Node.js](https://nodejs.org/en/download)** (required for CoC extensions)

- **A [Nerd Font](https://www.nerdfonts.com/font-downloads)** (for proper icon rendering in plugins like `vim-devicons`)

### 🔸 Optional
- **[fd](https://github.com/sharkdp/fd)** - better fzf utilities integration, open folders, files etc.
- **[bat](https://github.com/sharkdp/bat)** - syntax highlight while using fzf


## 🛠️ Installation

### Linux/Mac OS (Unix)

#### It is recommended to make a backup of your current vimrc and vim folder

```shell
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim/ ~/.vimbak/
```

#### Run the install script

```shell
curl -s https://raw.githubusercontent.com/gpd0/ThatsItVim/refs/heads/main/install.sh | bash
```
**Then Start Vim**
`vim`
### Enjoy!


## 🌟 Plugins & Credits

Here are the plugins used in **That's It VIM**, along with credits to their authors:

- [vim-fugitive](https://github.com/tpope/vim-fugitive) – Git wrapper for Vim
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) – Shows git diff indicators in the sign column
- [vim-surround](https://github.com/tpope/vim-surround) – Quoting/parenthesizing made simple
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) – Multiple cursors for Vim
- [vim-airline](https://github.com/vim-airline/vim-airline) – Lean & mean status/tabline for Vim
- [deoplete.nvim](https://github.com/Shougo/deoplete.nvim) – Asynchronous completion framework
- [nvim-yarp](https://github.com/roxma/nvim-yarp) – RPC framework for Neovim/Vim8 plugins
- [vim-hug-neovim-rpc](https://github.com/roxma/vim-hug-neovim-rpc) – Bridge between Vim8 and Neovim RPC features
- [nerdtree](https://github.com/preservim/nerdtree) – File explorer for Vim
- [vim-startify](https://github.com/mhinz/vim-startify) – Fancy start screen for Vim
- [everforest](https://github.com/sainnhe/everforest) – Dark & light Vim color scheme
- [vim-sneak](https://github.com/justinmk/vim-sneak) – Motion plugin for fast navigation
- [fzf](https://github.com/junegunn/fzf) – Blazing fast fuzzy finder
- [fzf.vim](https://github.com/junegunn/fzf.vim) – Vim integration for fzf
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) – Adds file icons to Vim
- [coc.nvim](https://github.com/neoclide/coc.nvim) – Intellisense engine for Vim

Thanks to all the plugin authors for their contributions! 🚀
