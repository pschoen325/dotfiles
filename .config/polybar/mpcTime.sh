#!/bin/zsh

#get elapsed time of the current song
elM=$(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 3 | cut -d "/" -f 1 | cut -d ":" -f 1);
elS=$(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 3 | cut -d "/" -f 1 | cut -d ":" -f 2);
#convert this time in seconds
el=$((elM*60 + elS));

#get length of song
leM=$(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 3 | cut -d "/" -f 2 | cut -d ":" -f 1);
leS=$(mpc | sed -n 2p | tr -s " " "X" | cut -d "X" -f 3 | cut -d "/" -f 2 | cut -d ":" -f 2);
#convert in seconds
le=$((leM*60 + leS));

#calculate the remaining time is seconds
re=$((le-el));
#convert it in MM:SS
reM=$((re/60));
reS=$((re%60));

#print the result
#echo $reM:$reS;

#get status
state=$(mpc | sed -n 2p  | cut -d " " -f 1);

#print the result
echo $reM:$reS;
