#!/bin/sh -eu

{ clasp login; } &
sleep 3
echo -n "Please enter your browser URL: "
read URL
curl ${URL}
wait
echo "Type $(tput bold)clasp clone$(tput sgr0) to get the source code"

