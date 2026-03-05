#!/bin/sh

# Enable verbose mode with -v flag
if [ "$1" = "-v" ]; then
    set -x
    shift
fi

set -f

stow git
stow zsh

# optional items
items="Alacritty Kitty Mangohud Zed Pipewire"

for name in $items; do
    printf 'Install config for %s? (y/n): ' "$name"
    read ans
    ans=$(printf '%s' "$ans" | tr '[:upper:]' '[:lower:]')
    case $ans in
        y|yes) stow "$name" ;;
        *)     : ;;
    esac
done

set +f

# privilidged section, works outside of Home dir
if [ "$(id -u)" -ne 0 ]; then
    printf "Superuser needed for the rest.\n"
    exit 1
fi

cp 	doas/doas.conf 	/etc/doas.conf
chown -c root:root 	/etc/doas.conf
chmod -c 0400 		/etc/doas.conf

cp modprobe.d/hid_apple.conf /etc/modprobe.d
