#!/bin/bash

# get value
entropy=$(cat /proc/sys/kernel/random/entropy_avail);

# print value


low="%{F#f00}";
normal="%{F#fff}";
high="%{F#0f0}";

if [ $entropy -lt 200 ]
then
    echo -e "$low  $entropy %{F-}";
elif [ $entropy -gt 201 ] && [ $entropy -lt 500 ]
then
    echo -e "$normal  $entropy %{F-}";
else
    echo -e "$high  $entropy %{F-}";
fi
