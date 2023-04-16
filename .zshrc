export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ $SPIN ]; then
  source ~/dotfiles/spin.sh
fi


alias g_update="stop && gfa && grbom && update"

run_focused_storybook () {
    kill $(lsof -t -i:9013)
    STORYBOOK_FOCUS={$1}/**/*.stories.tsx node ./.storybook/spin/server.js
}

alias rfs="run_focused_storybook" 
