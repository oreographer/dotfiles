# 🚀 Extra CLI Tools to Supercharge Your Linux Terminal

After setting up Fish, Starship, Kitty, and Fastfetch, you can enhance
your workflow with powerful CLI tools that improve speed, navigation,
and productivity.

This guide is focused on Debian / Ubuntu-based systems.

------------------------------------------------------------------------

# 📦 Installation

## Install All Recommended Tools

``` bash
sudo apt update
sudo apt install eza ripgrep fd-find bat fzf zoxide btop tree ncdu dust -y
```

------------------------------------------------------------------------

# 🔧 Post-Install Fixes (Debian Specific)

Some tools are renamed in Debian.

## Fix `fd`

``` bash
echo 'alias fd=fdfind' >> ~/.config/fish/config.fish
```

## Fix `bat`

``` bash
echo 'alias bat=batcat' >> ~/.config/fish/config.fish
```

Restart your terminal after adding aliases.

------------------------------------------------------------------------

# 🌳 File & Directory Tools

## tree

View directory structure:

``` bash
tree -L 2
```

## eza (Modern ls Replacement)

``` bash
eza -la
eza --tree --level=2
```

Supports icons (recommended with Nerd Fonts).

------------------------------------------------------------------------

# 🔎 Searching Tools

## fd

Fast file search:

``` bash
fd filename
```

## ripgrep (rg)

Search inside files:

``` bash
rg "search-text"
```

------------------------------------------------------------------------

# 📄 File Preview

## bat

Syntax-highlighted file viewer:

``` bash
bat file.txt
```

------------------------------------------------------------------------

# 📊 Disk Usage Tools

## dust

Visual disk usage overview:

``` bash
dust
```

## ncdu

Interactive disk cleaner:

``` bash
ncdu
```

------------------------------------------------------------------------

# 🚀 System Monitoring

## btop

Modern system monitor:

``` bash
btop
```

------------------------------------------------------------------------

# ⚡ Smart Navigation

## zoxide

Smarter directory jumping:

``` bash
z foldername
```

Initialize for Fish (if not already configured):

``` bash
zoxide init fish | source
```

## fzf

Fuzzy finder for files and history:

-   Press `Ctrl + R` to search command history\
-   Run `fzf` to search files interactively

------------------------------------------------------------------------

# 🔥 Minimal Essential Setup

If you prefer a lightweight setup, install:

-   eza\
-   ripgrep\
-   fd\
-   bat\
-   fzf\
-   zoxide\
-   btop

------------------------------------------------------------------------

# ✅ Final Result

With these tools, your Linux terminal becomes:

-   Modern\
-   Fast\
-   Developer-friendly\
-   Minimal\
-   Productivity-focused

Integrate them into your dotfiles for a fully reproducible development
environment.
