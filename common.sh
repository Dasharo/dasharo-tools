#/usr/bin/env bash

errorExit() {
    errorMessage="$1"
    echo "$errorMessage"
    exit 1
}

errorCheck() {
    errorCode=$?
    errorMessage="$1"
    [ "$errorCode" -ne 0 ] && errorExit "$errorMessage : ($errorCode)"
}
