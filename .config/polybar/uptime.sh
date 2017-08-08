#!/bin/bash
# uptime.sh
# get uptime from /proc/uptime

#uptime=$(uptime -p | cut -c4-)
#echo " $uptime"

uptime=$(</proc/uptime)
uptime=${uptime%%.*}

seconds=$(( uptime%60 ))
minutes=$(( uptime/60%60 ))
hours=$(( uptime/60/60%24 ))
days=$(( uptime/60/60/24 ))

if [ "$days" -eq "0" ]
		then
					echo " $hours hours"
						else if [ "$hours" -eq "0" ]
								then	
											echo " $days day"
												else
															echo " $days days, $hours hours"
														fi
													fi
