#!/bin/bash

val=$1

expect << EOF
spawn telnet localhost 6666
expect -re ".*>"
send "$val\r"
expect -re ".*>"
EOF
