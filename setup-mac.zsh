# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
/opt/homebrew/bin/brew install neovim nushell ghq fzf bat oh-my-posh asdf

# clone dotfiles repository
dotfile_dir = "$HOME/ghq/github.com/disVill/"

mkdir -p $dotfile_dir
cd dotfile_dir
git clone git@github.com:disVill/dotfiles.git

# create symlink for dotfiles
mkdir ~/.config
echo "export XDG_CONFIG_HOME=$HOME/.config" >> ~/.zshrc

# hyper
ln -s $dotfile_dir/dotfiles/.hyper.js $HOME/.hyper.js
# nushell
mkdir -p $HOME/.config/nushell
ln -s $dotfile_dir/dotfiles/nushell/config.nu $HOME/.config/nushell/config.nu
ln -s $dotfile_dir/dotfiles/nushell/env.nu $HOME/.config/nushell/env.nu
# nvim
mkdir -p $HOME/.config/nvim/lua/config
mkdir -p $HOME/.config/nvim/lua/plugins
ln -s $dotfile_dir/dotfiles/nvim/init.lua $HOME/.config/nvim/init.lua
ln -s $dotfile_dir/dotfiles/nvim/lazyvim.json $HOME/.config/nvim/lazyvim.json
ln -s $dotfile_dir/dotfiles/nvim/lua/config/keymaps.lua $HOME/.config/nvim/lua/config/keymaps.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/config/lazy.lua $HOME/.config/nvim/lua/config/lazy.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/config/options.lua $HOME/.config/nvim/lua/config/options.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/plugins/autocomplete.lua $HOME/.config/nvim/lua/plugins/autocomplete.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/plugins/lsp.lua $HOME/.config/nvim/lua/plugins/lsp.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/plugins/telescope.lua $HOME/.config/nvim/lua/plugins/telescope.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/plugins/treesitter.lua $HOME/.config/nvim/lua/plugins/treesitter.lua
ln -s $dotfile_dir/dotfiles/nvim/lua/plugins/ui.lua $HOME/.config/nvim/lua/plugins/ui.lua
# oh-my-posh
mkdir -p $HOME/.config/oh-my-posh
ln -s $dotfile_dir/dotfiles/oh-my-posh/.oh-my-posh.nu $HOME/.config/oh-my-posh/.oh-my-posh.nu
ln -s $dotfile_dir/dotfiles/oh-my-posh/themes/clean-detailed.omp.nu $HOME/.config/oh-my-posh/themes/clean-detailed.omp.nu
# jetbrains
ln -s $dotfile_dir/dotfiles/.ideavimrc $HOME/.ideavimrc
