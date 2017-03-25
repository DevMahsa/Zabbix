#!/bin/sh

export smtpemailfrom="for ex: netalert@ut.ac.ir"
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
#for test#export zabbixemailto=""
#for test#export zabbixsubject=test2
#for test#export zabbixbody=test
export smtpserver="server which supports the sending email"
export smtplogin="username for netalert"
export smtppass="passweord for netalert"

echo $zabbixemailto > /home/mahsa/file.txt
echo $zabbixsubject >> /home/mahsa/file.txt
echo $zabbixbody >> /home/mahsa/file.txt

/usr/bin/sendEmail -f $smtpemailfrom -t $zabbixemailto -u $zabbixsubject -m $zabbixbody -s $smtpserver -b 25 -xu $smtplogin -xp $smtppass
