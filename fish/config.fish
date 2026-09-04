if status is-interactive
    fastfetch

    # Starship prompt
    starship init fish | source

    # Accept autosuggestion with Tab
    bind \t accept-autosuggestion

    # Shift + Tab: show completions
    bind \e\[Z 'complete --list'
end

# PNPM
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
fish_add_path "$PNPM_HOME"

# Zed
fish_add_path "$HOME/.local/zed.app/bin"

# Aliases
alias ls='eza -l --group-directories-first --icons'
alias la='eza -la --group-directories-first --icons'
alias ll='eza -l --group-directories-first --icons'
alias lt='eza -aT --group-directories-first --icons'
alias l.='eza -d .* --group-directories-first --icons'

# Pacman / Arch
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'

# Clean package cache
alias clean='sudo pacman -Sc'
