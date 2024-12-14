#!/bin/bash

# Essential
sudo dnf install htop -y
sudo dnf install fish
sudo dnf install -y neovim python3-neovim
flatpak install flathub com.bitwarden.desktop

# For GNOME
flatpak install flathub org.gnome.Extensions 
flatpak install flathub com.mattjakeman.ExtensionManager 

# Browser
flatpak install flathub com.brave.Browser 
flatpak install flathub org.mozilla.firefox 

# Install Google Chrome (and remove the organization-managed warning)
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y
sudo dnf remove fedora-chromium-config -y

# For games
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub com.usebottles.bottles
flatpak install flathub info.cemu.Cemu
flatpak install flathub com.steamgriddb.steam-rom-manager
flatpak install flathub com.steamgriddb.SGDBoop
flatpak install flathub dev.lizardbyte.app.Sunshine
flatpak install flathub sh.ppy.osu

# Other Apps flatpak
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.rtosta.zapzap
flatpak install flathub org.telegram.desktop
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub io.github.thetumultuousunicornofdarkness.cpu-x
flatpak install flathub io.gitlab.theevilskeleton.Upscaler
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community


# For Dev

#Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update

sudo dnf install code # or code-insiders

#Unity
sudo sh -c 'echo -e "[unityhub]\nname=Unity Hub\nbaseurl=https://hub.unity3d.com/linux/repos/rpm/stable\nenabled=1\ngpgcheck=1\ngpgkey=https://hub.unity3d.com/linux/repos/rpm/stable/repodata/repomd.xml.key\nrepo_gpgcheck=1" > /etc/yum.repos.d/unityhub.repo
sudo yum check-update
sudo yum install unityhub