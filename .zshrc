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


alias g_update="stop && gfa && grbom && update"

run_focused_storybook () {
    kill $(lsof -t -i:9013)
    STORYBOOK_FOCUS=$1/**/*.stories.tsx node ./.storybook/spin/server.js
}

alias rfs="run_focused_storybook"

alias tu="TEST_WITH_UPLIFT=1 yarn test"
alias t="yarn test"
