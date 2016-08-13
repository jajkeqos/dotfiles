has_plugin() {
  (( $+functions[zplug] )) || return 1
  zplug check "${1:?too few arguments}"
  return $status
}

zplug "b4b4r07/zplug"

# local plugin
zplug "~/.modules", \
  from:local, \
  nice:1, \
  use:"*.sh"
zplug "~/.zsh", \
  from:local, \
  nice:2, \
  use:"<->_*.zsh"

# commands
zplug "mrowa44/emojify", \
  as:command
zplug "stedolan/jq", \
  as:command, \
  from:gh-r, \
  frozen:1
zplug "junegunn/fzf-bin", \
  as:command, \
  from:gh-r, \
  rename-to:"fzf", \
  frozen:1
zplug "monochromegane/the_platinum_searcher", \
  as:command, \
  from:gh-r, \
  rename-to:"pt", \
  frozen:1
zplug "peco/peco", \
  as:command, \
  from:gh-r, \
  frozen:1

# plugins
zplug "b4b4r07/emoji-cli", \
  if:'(( $+commands[jq] ))', \
    on:"junegunn/fzf-bin"
zplug "b4b4r07/enhancd", \
  use:init.sh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", \
  nice:19

