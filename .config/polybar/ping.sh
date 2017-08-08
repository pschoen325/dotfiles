#!/bin/bash

ping=$(ping -c 1 www.korben.info | sed -n 2p | cut -d "=" -f 4);
echo -e  $ping
