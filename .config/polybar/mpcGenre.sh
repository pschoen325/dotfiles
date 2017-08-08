#!/bin/zsh

foo=$(mpc | wc -l);
if [ $foo != 1 ]
then
    st=1;
else
    st=0;
fi

#get current music's genre
if [ $st = 1 ]
then
    echo ♫ $(mpc -f %genre% | sed -n 1p);
else
    echo ♫;
fi
