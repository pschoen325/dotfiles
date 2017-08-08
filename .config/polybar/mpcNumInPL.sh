#!/bin/bash

pos=$(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 2 | tr -d "#");
echo $pos;
