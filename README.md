## Nick's ZSH Configuration
There are two parts to this config:
1. The `.zshrc` file
2. Everything else!

The `.zshrc` file should be placed at $HOME/.zshrc (symlink with `ln -s source target`)
and the rest of the files should be placed in $HOME/.config/zsh/

On first run the plugins are auto installed.

For all aliases to function properly, you should have the following packages installed:
- Zoxide (Advanced cd)
- Eza (ls with icons)

I use Neovim as my editor and Starship as my prompt, this config assumes that - however it will work without them too :)
