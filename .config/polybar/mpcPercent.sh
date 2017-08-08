#!/bin/zsh

foo=$(mpc | wc -l);
if [ $foo != 1 ]
then
    st=1;
else
    st=0;
fi

if [ $st = 1 ]
then
    echo $(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 4 | tr -d "()");
else
    echo " ";
fi
