#!/bin/bash

# /

root=$(df / | tr -s "\t" " " | cut -d " " -f 5 | sed -n 2p);
echo -e "" / $root;
