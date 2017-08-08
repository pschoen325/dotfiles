#!/bin/zsh

foo=$(mpc | wc -l);
if [ $foo != 1 ]
then
    st=1;
else
    st=0;
fi

#echo the file extension of current song
if [ $st = 1 ]
then
    echo  $(mpc -f %file% | sed -n 1p | rev | cut -d "." -f 1 | rev);
else
    echo ;
fi
