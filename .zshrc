export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [ $SPIN ]; then
  source ~/dotfiles/spin.sh
fi

alias update="dev stop && dev up && dev start"

alias gca="git commit --amend"
alias gcan="got commit --amend --no-edit"
alias gpf="git push --force-with-lease"
alias t="yarn test"
