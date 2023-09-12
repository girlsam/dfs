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


alias g_update="dev stop && gfa && grbom && dev update && dev start"

run_focused_storybook () {
    kill $(lsof -t -i:9013)
    STORYBOOK_FOCUS=$1/**/*.stories.tsx node ./.storybook/spin/server.js
}

alias rfs="run_focused_storybook"

alias t="yarn test"
alias D="dev"
alias u_w="dev stop && gfa && grbom && dev refresh && yarn refresh-graphql && dev start"
alias u_s="dev stop && gfa && grbom && dev refresh --all && yarn refresh-graphql && dev start"
