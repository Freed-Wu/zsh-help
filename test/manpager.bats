#! /usr/bin/env bats
setup() {
	cd "$(dirname "$BATS_TEST_FILENAME")/.." || exit
	. test/setup.sh
}

@test manpager {
	run sh -c "export MANPAGER='batman | less --pattern=^\\S+' man man"
	assert_success
}

@test force {
	# set GROFF_TYPESETTER= to
	# avoid bug of `bundle exec bashcov -- bats -r .` on NixOS
	run sh -c 'GROFF_TYPESETTER= man man | bin/manpager "|" less --pattern=^\\S+'
	assert_success
}
