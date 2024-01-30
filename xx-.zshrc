export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

if [ $SPIN ]; then
  source ~/dotfiles/spin.sh
fi

alias t="yarn test"
alias D="dev"
alias r_g="yarn refresh-graphql"
alias u_w="dev stop && gfa && grbom && dev refresh && yarn refresh-graphql && dev start"
alias u_s="dev stop && gfa && grbom && dev refresh --all && yarn refresh-graphql && dev start"
