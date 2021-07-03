# Neovim config

1. Install [Node.js](https://github.com/nodejs/node).
```sh
pacman -S npm
```

2. Install [TypeScript](https://github.com/microsoft/TypeScript)
```sh
npm install -g typescript
```

3. Install [emmet-ls](https://github.com/aca/emmet-ls)
```sh
npm install -g emmet-ls
```

4. Install [ripgrep](https://github.com/BurntSushi/ripgrep)
```
pacman -S ripgrep
```

5. Install a [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation) or [patch your own](https://github.com/ryanoasis/nerd-fonts#font-patcher). Then set your terminal font (or `guifont` if you are using GUI version of Vim).

6. Execute `:PackerSync` 

7. After the packages have been installed, restart Neovim again

8. Type `:LspInstall` and then install the language server protocols you want. E.g. `:LspInstall typescript`.
