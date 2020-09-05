# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="$ZSH_CUSTOM/powerlevel10k/powerlevel10k"

export EDITOR='vim'

plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Alias
alias c.="vim ~/.zshrc"
alias pcat="pygmentize -f terminal256 -O style=native -g"

alias ..git="cd ~/git_repos"
alias t.="vim $HOME/git_repos/dotfiles/tmux/.tmux.conf"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh
