# Gnome 3 Config

## Terminal

* [Source](https://askubuntu.com/questions/967517/backup-gnome-terminal/967535)

### Install

```bash
dconf reset -f /org/gnome/terminal/
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup
```

### Generate

```bash
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup
```

## Shell

### Packages

```bash
git clone https://github.com/Apricity-OS/apricity-packages
cd apricity-packages
cd apricity-icons
makepkg -s -i
cd -
cd apricity-themes-gnome
# We won't install extensions
sed -i '/gnome-shell\/extensions/d' PKGBUILD
makepkg -s -i
# Install extensions: TODO
```

### Configuration

```bash
dconf reset -f /org/gnome/shell/
dconf load /org/gnome/shell/ < gnome_shell_settings_backup
```

### Generate

```bash
dconf dump /org/gnome/shell/ > gnome_shell_settings_backup
```
