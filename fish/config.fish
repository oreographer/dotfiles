if status is-interactive

fastfetch

set -Ux PATH /home/oreographer/.local/bin /home/oreographer/.local/zed.app/bin $PATH

starship init fish | source

bind \t accept-autosuggestion

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH="$HOME/.pnpm-global/bin:$PATH"

end

# pnpm
set -gx PNPM_HOME "/home/oreographer/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

alias ls='eza -l --color=always --group-directories-first --icons' # preferred listing
alias la='eza -al --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^.'"                                    # show only dotfiles
alias install="sudo apt install"
alias update="sudo apt update && sudo apt upgrade"
alias remove="sudo apt remove"
alias s="apt search"
alias clean="sudo apt clean && sudo apt autoremove && sudo apt autoclean"

bind \e\[Z 'complete --list'
