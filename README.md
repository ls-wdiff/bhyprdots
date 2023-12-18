# bhyprdots
Hyprland Dotfiles Backup + Simple Instructions


From an archinstall minimal:

Install Paru

```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S paruz fzf
```

modify Pacman.conf
`Colors`
`SigLevel = TrustAll`

Install ChaoticAur
```
 pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
 pacman-key --lsign-key 3056513887B78AEB
 pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
 pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

##Append (adding to the end of the file) to /etc/pacman.conf##
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
```
Make an alias for this later
`alias syu="sudo pacman -Sy && sudo powerpill -Su && paru -Su"`

Install essentials

`hyprland-git mesa-tkg-git lib32-mesa-tkg-git qt5-wayland qt6-wayland rofi-lbonn-wayland rofi-polkit-agent-git swww neovim waybar xorg-xwayland-hidpi-xprop zsh gvfs xdg-desktop-portal-hyprland xdg-desktop-portal-wlr wtype pipewire-alsa gst-plugin-pipewire pamixer pipewire-pulse pipewire-jack pavucontrol libpulse file-roller thunar thunar-archive-plugin tumbler imagemagick wl-clipboard`

Install others

`grim slurp grimblast-git betterdiscord-git betterdiscordctl discord powerpill ttf-droid ttf-profont-nerd vivaldi vivaldi-ffmpeg-codecs steam linux-steam-integration python-pywal nvm mtdev llvm liquidctl coolercontrol`

reboot, launch hyprland

configure Pacman.conf to use Aria2

`XferCommand = /usr/bin/aria2c --allow-overwrite=true --continue=true --file-allocation=none --log-level=error --max-tries=2 --max-connection-per-server=2 --max-file-not-found=5 --min-split-size=5M --no-conf --remote-time=true --summary-interval=60 --timeout=5 --dir=/ --out %o %u`

configure .config/hypr/hyprland.conf with

`exec-once = rofi-polkit-agent`

reboot and launch thunar+vivaldi to copy configs.

Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install powerlevel10k

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

reboot. with polkit now active, use vivaldi and thunar to finish the job.
