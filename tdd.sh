#!/bin/bash

function ctrl_c {
    echo "** Trapped CTRL-C"
    exit
}

trap ctrl_c INT TERM EXIT

while true; do

    rebar compile eunit skip_deps=true
    echo ""

    inotifywait -qr -e modify -e create -e move -e delete src test --exclude "\.\#.*"
done
