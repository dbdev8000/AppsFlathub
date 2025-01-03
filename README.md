# Automate Nobara Linux

Automate [Nobara Linux](https://nobaraproject.org/) setup.

After running it, you should have a fully functional CachyOS Linux with all the tools and customization that I preffer :).

## Motivation

Nobara is a Linux distro that I have been using for a long time and I want to help more people use it with my setup and I will also use it if I return to nobara

## Software

Next I will show what will be installed with the script

- Shell: `htop`, `fish`, `neovim`
- GNOME extensions: `gnome extensions`, `gnome extension manager`
- Secret management: `Bitwarden`
- Web browser: `Brave`, `Chrome`, `Firefox`
- Productivity: `AnyType`, `superProductity`
- Code: `VSCode`, `Unity-hub`
- Gaming: `Heroic Game Launcher` `Osu!`, `Cemu`, `Steam ROM manager`, `SGDBoop`, `Sunshine`
- Windows OS compatibility: `Bottles` (most Windows games work with Proton layer, most Windows native apps work with Caffe layer)

## Usage

1. Install Nobara. I preffer install GNOME:
   1. Filesystem: **EXT4**
   2. I use **Swap**
   3. And in the manualy partition you use:
      
   /boot/efi => fat32, minimum 600MB (label boot)

   /boot => Ext4, minimum 1GB

   / => Ext4 or BTRFS, as much as you want

   /home (recommended) => BTRFS or Ext4, as much as you want



2. Clone this repo: `https://github.com/dbdev8000/automate-nobara && cd automate-nobara`
   1. Update your system
   2. Use `./install.sh`
   3. Reboot your system and stay happy
