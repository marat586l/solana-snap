#!/bin/bash

#export LC_NUMERIC="en_US.UTF-8"
if [ -n "$1" ]
then
 pabkey=$1
else
 echo "NO TRASTED PABKEY"
 exit
fi
echo $pabkey
ip=0
ip=$(solana gossip | grep $pabkey | awk '{print $1}')":8899"
echo $ip

if [ -n "$2" ]
then
 path=$2
else
 path=$HOME/solana/ledger
fi
#echo $path
#exit
wget --trust-server-names -P "$path" http://$ip/snapshot.tar.bz2
wget --trust-server-names -P "$path" http://$ip/incremental-snapshot.tar.bz2
