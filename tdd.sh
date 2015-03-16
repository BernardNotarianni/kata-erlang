#!/bin/bash

function ctrl_c {
    echo "** Trapped CTRL-C"
    exit
}


trap ctrl_c INT TERM EXIT

while true; do
    echo ""

    rebar compile eunit skip_deps=true

    echo ""
    date +"%k:%M:%S - Waiting for source modification..."

    inotifywait -qr -e modify -e create -e move -e delete src test
done
