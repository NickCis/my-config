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
