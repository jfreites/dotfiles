# Dotfiles

This is my collection of configuration files.

## Usage

Clone this repository into ~/.dotfiles, and then create the symlinks [using GNU stow](https://www.gnu.org/software/stow/).

Example:

```terminal
$ git clone git@github.com:jfreites/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ stow neovim tmux fish # plus whatever else you'd like
```

For TMUX, install the Plugin Manager and then press prefix + I (capital i, as Install) to fetch the plugins.

```terminal
 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## License

MIT

