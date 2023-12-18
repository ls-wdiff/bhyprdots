if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -z "${WAYLAND_DISPLAY}" ]] && [[ "${XDG_VTNR}" = "1" ]]; then
  exec dbus-run-session Hyprland
fi

export ZSH="$HOME/.config/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH_CUSTOM=${~/.config/.oh-my-zsh/custom/}
export SUDO_PROMPT="AUTH: "
export EDITOR="nvim"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  )

source $ZSH/oh-my-zsh.sh

alias zrc="nvim ~/.zshrc"
alias hrc="nvim ~/.config/hypr/hyprland.conf"
alias krc="nvim ~/.config/kitty/kitty.conf"
alias lswp="cd ~/Photos/Wallpapers/"
alias c="clear"
alias s="paruz"
alias S="paru -S --noconfirm"
alias v="nvim"
alias ls="eza -Fal --icons --group-directories-first"
alias syu="sudo pacman -Sy && sudo powerpill -Su && paru -Su"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
