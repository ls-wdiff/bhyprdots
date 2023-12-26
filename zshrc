# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"
export EDITOR='micro'
export PAGER='bat'


ZSH_THEME="powerlevel10k/powerlevel10k"


ZSH_CUSTOM=~/.config/.zc/


plugins=(
		git
		sudo
		zsh-syntax-highlighting
		zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias v="micro "
alias sin="pacman -Qqe | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias zrc="micro ~/.zshrc"
alias hrc="micro ~/.config/hypr/hyprland.conf"
alias krc="micro ~/.config/kitty/kitty.conf"
alias wrc="cd ~/.config/waybar"
alias ls="eza -Falh --icons --group-directories-first "
alias ll="eza -Fa --icons "
alias S="paru -S --noconfirm"
alias s="paruz"
alias syu="sudo pacman -Sy && paru -Su"
alias x="ranger-cd"
alias t="theme.sh"


ranger-cd() {
    ~/.config/ranger/quitcd.sh
    LASTD=`cat "$HOME/.config/ranger/lastd"`
    [[ -d "$LASTD" ]] && cd "$LASTD"
}

chpwd() ls


chpwd() ls

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
