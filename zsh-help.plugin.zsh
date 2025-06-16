# shellcheck disable=all
# https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if (($+commands[bat])); then
  # ignore $@ to make `--help foobar` work
  function -help-() {
    bat --color=always -pplhelp
  }

  # Safe help wrapper to avoid global alias issues
  # Usage: run-help ls
  function run-help() {
    "$@" --help 2>&1 | -help-
  }

  # Replaces the original -help-alias global alias system with safe aliases
  function -help-alias() {
    for opt in $@; do
      alias -- "$opt=run-help"
    done
  }

  # llvm
  -help-alias --help --help-list --help-hidden --help-list-hidden -help -help-list -help-hidden -help-list-hidden
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
