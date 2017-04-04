#!/bin/bash
my_qdir='/usr/sbin/postconf -h queue_directory'
my_active='find $my_qdir/incoming $my_qdir/active $my_qdir/maildrop -type f -print | wc -l | awk '{print $1}'`
my_deferred=`find $my_qdir/deferred -type f -print | wc -l | awk '{print$1}'`
my_hold=`find $my_qdir/hold -type f -print | wc -l | awk '{print$1}'`

echo "ACTIVE MSG COUNT:" $my_active
echo "DEFERRED MSG COUNT:" $my_deferred
echo "hold MSG COUNT:" $my_hold
