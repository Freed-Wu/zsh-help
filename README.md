# zsh-help

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/zsh-help/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/zsh-help/main)
[![github/workflow](https://github.com/Freed-Wu/zsh-help/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/zsh-help/actions)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/zsh-help/total)](https://github.com/Freed-Wu/zsh-help/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/zsh-help/latest/total)](https://github.com/Freed-Wu/zsh-help/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)
[![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)
[![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)
[![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)
[![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)
[![github/v](https://shields.io/github/v/release/Freed-Wu/zsh-help)](https://github.com/Freed-Wu/zsh-help)

A zsh plugin to colorize `XXX --help`.

![help](https://github.com/victor-gp/cmd-help-sublime-syntax/assets/32936898/ddfe38cb-e7ee-4a8d-803b-c693ee0b6482)

## Dependencies

- [bat](https://github.com/sharkdp/bat): this plugin will do nothing if `bat`
  is not installed.

## Install

This plugin respects
[zsh plugin standard](https://github.com/zdharma-continuum/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc),
so if you use any plugin manager and follow the instructions of your plugin
manager, it can be installed correctly.

## Customize

### Colorize More Options

By default, the plugin colorizes `--help`, `-?`, `--help-all`, etc. You can
customize it to colorize more options like:

```zsh
alias -g -- '-h=-h | -help'
```

Because many software use `-h` to represent `--human-readable`, `--hex`, etc.
not `--help`, this plugin doesn't colorize `-h` by default.

### Function `-help()`

You can redefine function `-help()` to customize the colorization.
Such as:

```zsh
-help() {
  bat -plhelp --paging=always --color=always
}
```

will use a pager like less to display `XXX --help`. More options can be
found by `bat --help`.

### Force to Colorize

You can `XXX -h | -help` to force to colorize `XXX -h`.

## Similar Projects

- [manpager](https://github.com/Freed-Wu/manpager): colorize `man XXX` by
  `export MANPAGER=manpager`.
- [lesspipe](https://github.com/wofr06/lesspipe): colorize `less XXX` by
  `export LESSOPEN='|lesspipe.sh %s'`.
