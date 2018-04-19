#!/usr/bin/env bash
# shellcheck disable=SC2154

required() {
	error=""
	test -z "$shell_name" && error="shell name, $error"
	test -z "$file_name" && error="file name, ${error}"

	test -n "$error" && echo "$error" && return 1

	return 0
}

export -f required
