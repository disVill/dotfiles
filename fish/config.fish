if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /opt/homebrew/bin
end

set -g theme_display_git_untracked yes
set -g theme_display_git_default_branch yes
set -g theme_display_user yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_color_scheme dracula
set -g theme_newline_cursor yes
set -U FZF_LEGACY_KEYBINDINGS 0

alias g=git
alias vim=nvim
alias d=docker
alias ll='ls -la'

# figlet Hello conop ! | lolcat

source /opt/homebrew/opt/asdf/libexec/asdf.fish

# pnpm
set -gx PNPM_HOME "/Users/conop/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
