# shellcheck disable=all
# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if (($+commands[bat])); then
  # ignore $@ to make `-help foobar` work
  -help() {
    bat -plhelp --paging=never --color=always
  }
  -help-alias() {
    for opt in $@; do
      alias -g -- "$opt=\\$opt | -help"
    done
  }
  -help-alias --help
  # man
  -help-alias '-\?'
  # ccstudio
  -help-alias -ccs.help
  # x264
  -help-alias --longhelp --fullhelp
  # gnome
  -help-alias --help-all --help-gapplication --help-gtk
  unfunction -- -help-alias
fi
