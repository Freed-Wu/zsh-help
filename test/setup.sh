# shellcheck shell=bash
if [ -f /usr/lib/bats-support/load.bash ]; then
	load /usr/lib/bats-support/load.bash
elif [ -f /run/current-system/sw/share/bats/bats-support/load.bash ]; then
	load /run/current-system/sw/share/bats/bats-support/load.bash
elif [ -f ~/.nix-profile/share/bats/bats-support/load.bash ]; then
	load ~/.nix-profile/share/bats/bats-support/load.bash
else
	echo "please install bats-support firstly!"
	exit 1
fi
if [ -f /usr/lib/bats-assert/load.bash ]; then
	load /usr/lib/bats-assert/load.bash
elif [ -f /run/current-system/sw/share/bats/bats-assert/load.bash ]; then
	load /run/current-system/sw/share/bats/bats-assert/load.bash
elif [ -f ~/.nix-profile/share/bats/bats-assert/load.bash ]; then
	load ~/.nix-profile/share/bats/bats-assert/load.bash
else
	echo "please install bats-assert firstly!"
	exit 1
fi
