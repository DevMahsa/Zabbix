#!/bin/bash
cat /path/to/srvlist.txt |  while read output
do
    c=`zabbix_get -s "$output" -k agent.ping `> /dev/null
    if [ $c -eq 1 ]; then
    echo "node $output is up" 
    else
    echo "node $output is down"
    fi
done
