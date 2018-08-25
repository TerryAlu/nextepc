#!/bin/bash

BUILD_PATH="$(realpath $1 2>/dev/null)"

BRANCH_NAME="install"
URL_BASE="https://raw.githubusercontent.com/TerryAlu/nextepc/$BRANCH_NAME/support/install"

check_and_exec () {
	echo "==== Execute $1.sh ===="
	if [ -f $1  ]; then
		./"$1.sh"
	else
		source <(curl -s "$URL_BASE/$1.sh")
	fi
	echo "==== Finished $1.sh ===="
}

# all
check_and_exec "requirement"
check_and_exec "build_nextepc"

# hss
check_and_exec "webui"

# pgw
check_and_exec "tun"
check_and_exec "masq"
