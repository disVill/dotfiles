# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.config.show_banner = false

source ~/.config/oh-my-posh/.oh-my-posh.nu

alias g = git
alias vim = nvim
alias d = docker
alias order-by = sort-by
alias union = merge

$env.config.keybindings = [
  {
    name: change_current_directory_with_fzf_and_ghq
    modifier: CONTROL
    keycode: Char_g
    mode: [emacs, vi_normal, vi_insert]
    event: {
      send: ExecuteHostCommand,
      cmd: 'cd (ghq list --full-path
            | fzf --scheme=path --preview $"bat --color=always --style=header,grid --line-range :80 {}/README.*"
            | decode utf-8
            | str trim
          )'
    }
  }
  {
    name: fuzzy_history
    modifier: control
    keycode: char_r
    mode: [emacs, vi_normal, vi_insert]
    event: [
      {
        send: ExecuteHostCommand
        cmd: 'commandline edit --insert (
          history
            | get command
            | reverse
            | uniq
            | str join (char -i 0)
            | fzf --scheme=history --read0 --layout=reverse --height=40% -q (commandline)
            | decode utf-8
            | str trim
        )'
      }
    ]
  }
]
