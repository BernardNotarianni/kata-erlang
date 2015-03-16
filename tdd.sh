#!/bin/bash

function ctrl_c {
    echo "** Trapped CTRL-C"
    exit
}


trap ctrl_c INT TERM EXIT

while true; do
    echo ""

    erl -make

    if [ $? == 0 ]
    then
	echo ""
	erl -noshell -pa ebin -s facto_test test -run init stop
    fi

    echo ""
    date +"%k:%M:%S - Waiting for source modification..."

    inotifywait -qr -e modify -e create -e move -e delete src test
done
